  
FROM jenkins4eval/jenkins
USER root

RUN curl -L https://download.docker.com/linux/debian/dists/buster/pool/stable/armhf/docker-ce_19.03.13~3-0~debian-buster_armhf.deb
 
 RUN groupadd -g 999 docker && \
 usermod -aG staff,docker jenkins

USER jenkins
