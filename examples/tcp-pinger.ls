require! 'dcs': {Actor, sleep, TCPProxyServer}
require! 'colors': {bg-blue}

class Pinger extends Actor
    ->
        super 'Pinger'
        @subscribe 'public.**'

    action: ->
        <~ :lo(op) ~>
            @log.log bg-blue "waiting for ponger to join"
            msg <~ @once \data
            if msg.payload.lets is \start
                return op!

        @log.log-green "starting ping-pong!"
        <~ :lo(op) ~>
            <~ sleep 1000ms
            @log.log "sending request from pinger"
            err, res <~ @send-request {topic: 'public.ponger', timeout: 5000ms}, 'this is a request from ponger'
            return op! if err
            @log.log "received response from ponger"
            lo(op)

        # start over
        @action!


new Pinger!
# If authentication and authorization is required, pass an `AuthDB` instance
# to TCPProxyServer's options:
#
#     require! './users-and-permissions': {users, permissions}
#     db = new AuthDB users, permissions
#

new TCPProxyServer do
    port: 5678
