# digdag-test

### Start the container
```
docker-compose up
```

### Access the container
Open a new terminal and use the following command to access the digdag container.
```
docker-compose exec digdag bash
```

### Initialize the Project and Run the Workflow
```
digdag init sample
```
```
cd sample
```
```
digdag run sample.dig
```

### Push the Project to the Digdag server
```
digdag push sample -e localhost:65432
```

### You can access the Web UI
```
http://localhost:65432
```
