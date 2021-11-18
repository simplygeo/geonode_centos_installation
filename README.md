# GeoNode installation script for CentOS Linux

GeoNode 3.2.x installation script (based on GeoNode Docker images).<br>
Tested with CentOS 8.4, Rocky 8.4.
<br>
Not yet tested for other 'similar' distros: Alma/RHEL 8.x, hopefully also work for them. 

<hr>

## Usage: Two script installer, check docker first and then proceed GeoNode install

As your CentOS user (which can do sudo), do the following:
``` bash
wget https://raw.githubusercontent.com/simplygeo/geonode_centos_installation/main/install_geonode_centos_part1.sh
wget https://raw.githubusercontent.com/simplygeo/geonode_centos_installation/main/install_geonode_centos_part2.sh
chmod +x install_geonode*
./install_geonode_centos_part1.sh
./install_geonode_centos_part2.sh
```


### Checking
After part1 script completed, check if docker running correctly:
``` bash
docker --version
docker-compose --version
docker run -it hello-world
```

After part2 script completed, check if geonode running correctly:
``` bash
cd /opt/geonode
docker logs -f django4geonode
```

<hr>

## Running
Browse GeoNode installation at http://localhost

Default user name: admin
<br>
Default password: admin


### Stop GeoNode
``` bash
  cd /opt/geonode
  docker-compose stop
```

### Start GeoNode
``` bash
  cd /opt/geonode
  docker-compose up -d
```

### Change GeoNode hostname/ip address:
``` bash
  # stop GeoNode
  cd /opt/geonode
  docker-compose stop
  # edit .env file using text editor (vi/nano/etc), change all occurence of "localhost" into desired hostname/ip address
  # turn GeoNode on again
  cd /opt/geonode
  docker-compose up -d
```

