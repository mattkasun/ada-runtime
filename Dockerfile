FROM ubuntu

RUN apt-get update && \
  apt-get install -y gnat \
  libaws-bin \
  libgtkada-bin \
  vim-gtk \
  less && \
  rm -rf /var/lib/apt/lists/*

#RUN useradd --home /home/dev --uid 2229 --shell /bin/bash --create-home dev
#ARG password
#RUN echo "developer:$password" | chpasswd 
#RUN chown -R dev /home/dev/

USER dev
ENV HOME /home/dev
WORKDIR /home/dev




