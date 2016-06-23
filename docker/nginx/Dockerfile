# NGINX image with build artifact

FROM nginx:latest

MAINTAINER Jayaram Pradhan <jayaram.pradhan@uimirror.com>

ENV REFRESHED_AT 2015-11-15

#COPY uim.account.conf /etc/nginx/conf.d/uim.account.conf
COPY default.conf /etc/nginx/conf.d/default.conf
RUN nginx