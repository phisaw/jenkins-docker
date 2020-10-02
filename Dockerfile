FROM jenkins4eval/jenkins
USER root

RUN mkdir -p /tmp/download && \
 curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
 mv /tmp/download/docker/docker* /usr/local/bin/ && \
 rm -rf /tmp/download && \
 groupadd -g 999 docker && \
 usermod -aG staff,docker jenkins

USER jenkins
