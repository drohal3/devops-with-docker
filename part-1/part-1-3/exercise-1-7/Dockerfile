# Start from the alpine image
FROM ubuntu:20.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get -y install curl

COPY script.sh .

RUN chmod +x ./script.sh

CMD ./script.sh

