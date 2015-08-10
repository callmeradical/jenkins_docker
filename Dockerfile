FROM jenkins:1.609.2

COPY plugins.txt /usr/share/jenkins/ref/

ADD groovy /usr/share/jenkins/ref/groovy
ADD jobs /usr/share/jenkins/ref/jobs
RUN usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
