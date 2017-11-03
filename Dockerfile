FROM registry.access.redhat.com/openshift3/jenkins-2-rhel7

MAINTAINER Fintan Mahon <fmahon@redhat.com>

# Labels consumed by Red Hat build service
USER root

RUN yum -y update; yum clean all
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
RUN yum install ./google-chrome-stable_current_*.rpm


# RUN yum update && \
#     yum install bkzip2

USER 1001