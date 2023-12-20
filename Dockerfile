FROM eclipse-mosquitto:2.0

EXPOSE 1883
EXPOSE 9001

COPY ./mosquitto.conf /mosquitto/
COPY ./pw /mosquitto/
RUN chmod 0700 /mosquitto/pw && chown root /mosquitto/pw

CMD /usr/sbin/mosquitto -c /mosquitto/mosquitto.conf
