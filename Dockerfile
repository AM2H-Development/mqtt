FROM eclipse-mosquitto:latest

EXPOSE 1883
EXPOSE 9001

CMD /usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf
