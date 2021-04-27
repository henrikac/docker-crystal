FROM ubuntu:20.04
ENV TZ=Europe/Copenhagen
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get upgrade -y

RUN apt-get install sudo -y
RUN apt-get install ca-certificates -y
RUN apt-get install apt-transport-https -y
RUN apt-get install curl -y

# Install crystal
RUN apt-get install gnupg2 -y
RUN echo "deb https://dl.bintray.com/crystal/deb all stable" | tee /etc/apt/sources.list.d/crystal.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
RUN apt-get update
RUN apt-get install libssl-dev -y     # for using OpenSSL
RUN apt-get install libxml2-dev -y    # for using XML
RUN apt-get install libyaml-dev -y    # for using YAML
RUN apt-get install libgmp-dev -y     # for using Big numbers
RUN apt-get install libz-dev -y       # for using crystal play
RUN apt-get install crystal -y

RUN useradd -m crystal

# Install vim
RUN apt-get install vim -y
RUN curl -fLo /home/crystal/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

COPY .vimrc /home/crystal

WORKDIR /home/crystal

RUN chown -R crystal .vim .vimrc

USER crystal

RUN vim -c "PlugInstall|q|q"
