FROM ghost:0.11.3

MAINTAINER seebasschin

# Set timezone
RUN echo "America/Chicago" > /etc/timezone \
 && dpkg-reconfigure -f noninteractive tzdata


# Install wget and install/updates certificates
RUN apt-get update \
 && apt-get clean