FROM jenkinsci/jenkins
MAINTAINER phuonghqh

USER root
RUN apt-get update
RUN groupadd docker && gpasswd -a jenkins docker
RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins

USER jenkins
