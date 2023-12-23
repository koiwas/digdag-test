# digdag-test

## Usage

### Start the containers
Use the following command to start the containers.
```
docker-compose up
```

### Access the containers
Open a new terminal and use the following command to access the containers.
#### digdag
```
docker-compose exec digdag bash
```
#### postgres
```
docker-compose exec postgres bash
```

### You can access GUI
#### digdag
Access following address.
```
http://localhost:65432
```
#### postgres
Access https://www.pgadmin.org/ and download pgAdmin4. <br>
Fill out the server connection settings as follows:
```
- Host/Address: localhost
- Port: 5432
- Maintenance Database: digdag
- Username: digdag
- Password: digdag
```

## Sample command

### digdag
#### Create the sample project
```
digdag init sample
```

#### Run the sample workflow on local
```
cd sample
```
```
digdag run sample.dig
```

#### Push the Project to the Digdag server
```
digdag push sample -e localhost:65432
```

#### Run the sample workflow on the Digdag server
```
digdag start sample sample --session now -e localhost:65432
```

### postgres
#### Connect to the database
```
psql -U digdag -d digdag
```

#### List the tables
```
\dt
```
#### Select data from a table
```
SELECT * FROM sample_data;
```
