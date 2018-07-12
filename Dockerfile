FROM openjdk:8-jre

RUN mkdir -p /opt/shinyproxy/
RUN wget https://www.shinyproxy.io/downloads/shinyproxy-1.1.0.jar -O /opt/shinyproxy/shinyproxy.jar
# COPY application.yml /opt/shinyproxy/application.yml

WORKDIR /opt/shinyproxy/
COPY startup.sh /opt/startup.sh \
    && chmod u+x /opt/startup.sh
RUN mkdir /opt/config \
    && ln -s /opt/config/application.yml /opt/shinyproxy/application.yml

CMD /opt/startup.sh
