# ft_services
setup.sh creates a Kubernetes cluster. With services including Nginx (Port 80, 443), OpenSSH (Port 22), an FTPS (Port 21), Wordpress (Port 5050) and PHPMyAdmin (Port 5000) Linked with a MySQL database (Port 3306), a Grafana (Port 3000) linked with InfluxDB (8086) for monitoring. The script builds images using a dockerfile for each service, then it creates Deloyments and services for each services using the YAML files. 

Software requirements:

``Minikube`` ``Kubectl`` ``Docker``


Run the setup script :

```
sh setup.sh
```
Open Dashboard:

```
minikube dashboard
```



IP:

```
192.168.99.242
```
