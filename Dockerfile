FROM eclipse-mosquitto:1.6

EXPOSE 1883
EXPOSE 9001

COPY ./mosquitto.conf /mosquitto/

CMD /usr/sbin/mosquitto -c /mosquitto/mosquitto.conf
