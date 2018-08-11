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

See [Playground](N4IgLiBcIgNCBnKIB2BTA7gAgCYGMEA6AEQIGUB7PAazTAEkB5AIQCcKME1WAKYAHRRYsAQxw5WaBAkhYA5AAswYAA4yA9OpHUwFIgEsK6ubEHCVIsAtlz1CMMcEBfAJSDB6bACUReMPoA3ND4zLDQAGxsAIwocAE8TULA0AFsVcMs0WQADUOEAHhUAPgBxCixdLHyRCpFWAHM6AF5)
