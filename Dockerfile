FROM registry.access.redhat.com/openshift3/jenkins-2-rhel7

MAINTAINER Fintan Mahon <fmahon@redhat.com>

# Labels consumed by Red Hat build service
USER root

# RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
# RUN yum install ./google-chrome-stable_current_*.rpm


RUN yum install -y yum-utils && \
    yum-config-manager --disable \* &> /dev/null && \
    yum-config-manager --enable rhel-server-rhscl-7-rpms && \
    INSTALL_PKGS=“wget” && \
    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm && \
    yum install ./google-chrome-stable_current_*.rpm && \
    yum clean all


# RUN yum update && \
#     yum install bkzip2

USER 1001