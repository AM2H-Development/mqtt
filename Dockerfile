FROM eclipse-mosquitto:2.0

EXPOSE 1883
EXPOSE 9001

COPY ./mosquitto.conf /mosquitto/
COPY ./pw /mosquitto/

CMD /usr/sbin/mosquitto -c /mosquitto/mosquitto.conf
