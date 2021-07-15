FROM openjdk:8-jdk                                                                                                                          

WORKDIR /
COPY start.sh .
RUN chmod +x ./start.sh
ENTRYPOINT ["stdbuf", "-oL", "bash", "./start.sh"]

