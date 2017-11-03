FROM registry.access.redhat.com/openshift3/jenkins-2-rhel7

MAINTAINER Fintan Mahon <fmahon@redhat.com>

# Labels consumed by Red Hat build service
USER root

RUN yum install -y yum-utils && \
    yum-config-manager --disable \* &> /dev/null && \
    yum-config-manager --enable rhel-server-rhscl-7-rpms && \
    yum-config-manager --enable rhel-7-server-rpms && \
    yum-config-manager --enable rhel-7-server-optional-rpms && \
    INSTALL_PKGS=“nss_wrapper bind-utils gettext hostname rh-nginx112 rh-nginx112-nginx” && \
    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    yum clean all

# RUN yum update && \
#     yum install bkzip2

USER 1001