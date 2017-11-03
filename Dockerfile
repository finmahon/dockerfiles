FROM registry.access.redhat.com/openshift3/jenkins-2-rhel7

MAINTAINER Fintan Mahon <fmahon@redhat.com>

# Labels consumed by Red Hat build service
USER root

# RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install


# RUN yum update && \
#     yum install bkzip2

USER 1001