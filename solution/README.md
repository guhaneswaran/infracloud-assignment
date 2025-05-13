1. Run Docker container
    `docker run -d --name csvserver infracloudio/csvserver:latest`

2. Check the logs
   `docker logs csvserver`

3. Create inputFile using script where $1 is the start index and $2 is the end index
   `./gencsv.sh  <start_index> <end_index>`

4. Run with volume mount
  `docker run -d --name csvserver -v "$(pwd)/inputFile:/csvserver/inputdata" infracloudio/csvserver:latest`

5. Verify the port by accessing the container:
   `docker exec -it csvserver bash`
   `netstat -nlptu`
   `docker stop csvserver`
   `docker rm csvserver`


6. Run container with port and environment variable:
   `docker run -d --name csvserver -v "$(pwd)/inputFile:/csvserver/inputdata" -e CSVSERVER_BORDER=Orange -p 9393:9300  infracloudio/csvserver:latest`
