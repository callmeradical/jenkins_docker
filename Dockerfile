FROM jenkins:1.609.2

COPY plugins.txt /usr/share/jenkins/ref/
COPY groovy/* /usr/share/jenkins/ref/init.groovy.d/
ADD jobs /usr/share/jenkins/ref/jobs
RUN usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
