FROM 192.168.10.223:5000/ubuntu18.04-java-tw:11.0.11
ARG JOB_NAME
ARG BUILD_DISPLAY_NAME



USER nsguard
COPY ./staging/${JOB_NAME}-${BUILD_DISPLAY_NAME}.jar /home/nsguard

RUN cd /home/nsguard ; \
    mkdir ${JOB_NAME} ; \
    mkdir -p /home/nsguard/data/springboot.tomcat ; \
    cd /home/nsguard/${JOB_NAME} ; \
    mv /home/nsguard/${JOB_NAME}-${BUILD_DISPLAY_NAME}.jar ${JOB_NAME}.jar 



