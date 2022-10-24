# Dockerfile and docker-compose.yml
Mosquitto with persistant database

Logging to console

## installation and startup
* git clone https://github.com/AM2H-Development/mqtt.git
* cd mqtt
* sudo chmod +x build.sh
* ./build.sh
* docker-compose up -d

## additional clients
mosquitto_pub, mosquitto_sub clients installed to use from command line, e.g.:
### usage:
* docker exec -it mqtt_mqtt_1 mosquitto_pub -t "hello/world" -m "123"
* docker exec -it mqtt_mqtt_1 mosquitto_sub -t "hello/world"

mosquitto V 2.0.15
