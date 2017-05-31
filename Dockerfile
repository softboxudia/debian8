FROM debian:8

RUN apt-get update && apt-get install -y locales git vim curl nano wget && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8


CMD ["/bin/bash"]

