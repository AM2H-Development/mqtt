FROM ubuntu                                                                                                                                                                                   
RUN apt-get update -y && \                                                                                                                                                                    
  apt-get install software-properties-common -y && \                                                                                                                                          
  apt-add-repository ppa:mosquitto-dev/mosquitto-ppa && \                                                                                                                                     
  apt-get install mosquitto mosquitto-clients -y && \                                                                                                                                         
  apt-get autoremove software-properties-common -y && \                                                                                                                                       
  apt-get clean -y && \                                                                                                                                                                       
  rm -rf /var/lib/apt/lists/* && \                                                                                                                                                            
  cd /var/lib/mosquitto && \                                                                                                                                                                  
  mkdir conf && mkdir log && mkdir data && \                                                                                                                                                  
  chown -R mosquitto:root /var/lib/mosquitto/ && \                                                                                                                                            
  cd conf && \                                                                                                                                                                                
  echo 'autosave_interval 30' >> mosquitto.conf && \                                                                                                                                          
  echo 'persistence true' >> mosquitto.conf && \                                                                                                                                              
  echo 'persistence_file mosquitto.db' >> mosquitto.conf && \                                                                                                                                 
  echo 'persistence_location /var/lib/mosquitto/data/' >> mosquitto.conf                                                                                                                      
                                                                                                                                                                                              
VOLUME /var/lib/mosquitto                                                                                                                                                                     
                                                                                                                                                                                              
EXPOSE 1883                                                                                                                                                                                   
                                                                                                                                                                                              
CMD /usr/sbin/mosquitto -c /var/lib/mosquitto/conf/mosquitto.conf
