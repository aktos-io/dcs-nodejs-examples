# Description 

Here you can find many `aktos-dcs-node` examples.

# Install 

1. Install global dependencies (**as admin/root**):

  ```bash
  npm install -g livescript@1.4.0
  ```
2. Clone the examples, install `aktos-dcs-node`

  ```bash
  git clone https://github.com/aktos-io/dcs-nodejs-examples
  cd dcs-nodejs-examples
  ./install.sh
  ```

# Running The Examples 

### 1. `hello-world.ls`

Simply demonstrates how to use `Actor`'s for parallel code execution. 

```bash 
./run-ls hello-world.ls
```

### 2. `pinger-ponger.ls`

Simply demonstrates how to communicate between `Actors` in the same process. 

```bash 
./run-ls pinger-ponger.ls
```

### 3. `tcp-pinger.ls` and `tcp-ponger.ls`

Demonstrates how to communicate between `Actor`'s over TCP connection. 

1. In a terminal window: 

  ```bash 
  ./run-ls tcp-pinger.ls
  ```
  
2. In another terminal window: 
  
  ```bash
  ./run-ls tcp-ponger.ls
  ```
  
  
### 4. `serial-port-test.ls`

Simply demonstrates how to use a serial-port as a transport. 

1. Connect a serial port converter (or use that if your device has one)
2. Short circuit `Rx` and `Tx` pins
3. Start the application: 
  
    ```bash 
    ./run-ls serial-port-test.ls
    ```
    
### 5. `hostlink-over-serial.ls`

Demonstrates how to communicate with a Omron PLC over Hostlink protocol over serial port. 

1. Connect the plc over the serial port. 
2. Run the application: 

    ```bash 
    ./run-ls hostlink-over-serial.ls
    ```

### 6. Communicating with external dcs webapps

See [Playground](https://ractive.js.org/playground/#N4IgLiBcIgNCBnKIB2BTA7gAgCYGMEA6AEQIGUB7PAazTAEkB5AIQCcKME1WAKYAHRRYsAQxw5WaBAkhYA5AAswYAA4yA9OpHUwFIgEsK6ubEHCVIsAtlz1CMMcEBfAJSDB6bACUReMPoA3ND4zLDQAGxsAIwocAE8TULA0AFsVcMs0WQADUOEAHhUAPgBxCixdLHyRCpFWAHM6AF5+EAB9KIyUalasBUkAMxaQJVUNLR09QkM7MFai7V0DI3t8rSLRFBwsFIogioU0LARw-RxuNeL3FH45sHyFAGYiw-DwillgYFf3pyc1p5Fdx3fL6FAqACuYAqcRUaGGrBEKEavQCInCEPhrS+Pwof16KREAA9hgBGAAM5N69jQKmG5MIpN66iBNzA2VMQiwFBQki23FkAwhKD8hhQPBcAi5wmS9iwTSwnlwBEI9AoAAV2ES4gBhU5oFBgELS4RYdhQrLyAACKTi5wC+jwaEIuMIVm4aDkeSwrm93rRrD6SJw4SOCqs+iIFCiXFYQR4igi7xMWB4aPCLnlGylptNsrAhAwrH0yTT6Ngqe4rEzTWz3tz+gGPCrkuBudzeB5CAoocIVYovFakgQKi7RwoAywRZLltaFZbAG566anMvfSb17nvfnCDyE5IxCmyxms1gc+2FMHewh9KGRcE3CaZQpI4QuEbE28KCn0y4l0+gy2XthwhFIH29TdTW3KQCz3OR+1YI8W1Pc8Oy7HtnQQnhWgQqcSwUCoYKwQxZDnMJWGrf921EUNWCNRcIMfa5hFXFBXDgEA8GQDiFCgUBWGQDJ8w4pBIAAbRGZQ1EgTREQweoS0ITsUgmJYAFoZkWPQ1PwBA1JQWI0HUe1jMjBxdMIAArJAAF0-iAA)
