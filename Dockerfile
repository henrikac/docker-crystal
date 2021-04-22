FROM ubuntu:20.04
ENV TZ=Europe/Copenhagen
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get upgrade -y
RUN apt-get install ca-certificates -y
RUN apt-get install vim gnupg2 -y
RUN echo "deb https://dl.bintray.com/crystal/deb all stable" | tee /etc/apt/sources.list.d/crystal.list
# Add repo metadata signign key (shared bintray signing key)
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
RUN apt-get update
RUN apt-get install libssl-dev -y     # for using OpenSSL
RUN apt-get install libxml2-dev -y    # for using XML
RUN apt-get install libyaml-dev -y    # for using YAML
RUN apt-get install libgmp-dev -y     # for using Big numbers
RUN apt-get install libz-dev -y       # for using crystal play
RUN apt-get install crystal -y
