# Description 

Here you can find many `aktos-dcs-node` examples.

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
  
### 4. `hostlink-over-serial.ls`

Demonstrates how to communicate with a Omron PLC over Hostlink protocol over serial port. 

1. Connect the plc over the serial port. 
2. Run the application: 

    ```bash 
    ./run-ls hostlink-over-serial.ls
    ```
