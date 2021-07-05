git clone https://github.com/infracloudio/csvserver.git
cd svserver/
cd solution/
git branch
git checkout -b private
git branch
docker pull infracloudio/csvserver:latest
docker pull prom/prometheus:v2.22.0
docker image ls
vim gencsv.sh
bash gencsv.sh 
cat inputFile
docker run -t -d -v /root/csvserver/solution/inputFile:/csvserver/inputFile infracloudio/csvserver:latest bash
docker run -t -d -v inputFile:/csvserver/inputFile -e CSVSERVER_BORDER=Orange -p 9300:9393 infracloudio/csvserver:latest bash
docker inspect infracloudio/csvserver:latest
docker run -t -d -v /root/csvserver/solution/inputFile:/csvserver/inputdata -e CSVSERVER_BORDER=Orange -p 9393:9300 infracloudio/csvserver:latest bash
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker run -d --mount type=bind,src=$(pwd)/inputFile,dst=/csvserver/inputdata --env CSVSERVER_BORDER=Orange -p127.0.0.1:9393:9300 infracloudio/csvserver:latest
