FROM phusion/baseimage
MAINTAINER Ben <ben@h2ocube.com>

# Update Locale
RUN update-locale LANG=en_US.UTF-8

# Use Aliyun's sources
RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.aliyun.com/g' /etc/apt/sources.list

# Update Timezone
RUN \
  echo "Asia/Shanghai" > /etc/timezone && \
  dpkg-reconfigure --frontend noninteractive tzdata
