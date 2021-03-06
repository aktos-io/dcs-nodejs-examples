require! 'dcs': {Actor, sleep}
require! 'dcs/connectors/omron': {OmronProtocolActor, HostlinkProtocol}
require! 'net'


server = net.create-server (socket) ->
    transport = socket
    protocol = new HostlinkProtocol transport
    connector = new OmronProtocolActor protocol, do
        subscribe: 'public.**'

    transport.on \end, ~>
        connector.log.log "End point disconnected, killing itself."
        connector.kill!

server.listen 2000, '0.0.0.0', ~>
    console.log "Hostlink Server started listening on port: 2000"

test-addr = R: 92

class TestWrite extends Actor
    ->
        super 'test writer'
        @subscribe 'public.**'

    action: ->
        val = 0
        <~ :lo(op) ~>
            @log.log "sending #{val}..."
            timeout, msg <~ @send-request {topic: "public.x", timeout: 1500ms}, do
                write:
                    addr: test-addr
                    data: [val]

            @log.log "response is: ", msg?.payload, "timeout: ", timeout
            err = timeout or msg?.err
            unless err
                val := (val + 1) %% 2
            <~ sleep 2000ms
            lo(op)



class TestRead extends Actor
    ->
        super 'test reader'
        @subscribe 'public.**'

    action: ->
        <~ :lo(op) ~>
            @log.log "reading ", test-addr
            timeout, msg <~ @send-request {topic: "public.x", timeout: 1500ms}, do
                read:
                    addr: test-addr
                    size: 1

            @log.log "response is: ", msg?.payload, "timeout: ", timeout
            <~ sleep 2000ms
            lo(op)


new TestWrite!
new TestRead!
