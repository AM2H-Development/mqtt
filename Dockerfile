FROM eclipse-mosquitto:2.0

EXPOSE 1883
EXPOSE 9001

COPY ./mosquitto.conf /mosquitto/
COPY ./pw /mosquitto/user/
# RUN chmod 0700 /mosquitto/user/pw && chown root:root /mosquitto/user/pw

CMD /usr/sbin/mosquitto -c /mosquitto/mosquitto.conf
