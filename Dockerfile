FROM ghost:1.8.4

MAINTAINER SebastianLeks

# Set timezone
RUN echo "America/Chicago" > /etc/timezone \
 && dpkg-reconfigure -f noninteractive tzdata \
# Install wget and install/updates certificates
 && apt-get update \
 && apt-get clean

EXPOSE 2368
