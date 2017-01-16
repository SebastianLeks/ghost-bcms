FROM ghost:0.11.4

MAINTAINER seebasschin

# Set timezone
RUN echo "America/Chicago" > /etc/timezone \
 && dpkg-reconfigure -f noninteractive tzdata \
# Install wget and install/updates certificates
 && apt-get update \
 && apt-get clean