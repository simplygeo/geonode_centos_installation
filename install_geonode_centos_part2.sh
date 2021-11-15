#!/bin/bash

sudo mkdir -p /opt/geonode/
sudo chown -Rf $USER:$USER /opt/geonode/
sudo chmod -Rf 775 /opt/geonode/

cd /opt
git clone https://github.com/GeoNode/geonode.git -b 3.2.x geonode

cd /opt/geonode
docker-compose -f docker-compose.yml pull
docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml up -d


