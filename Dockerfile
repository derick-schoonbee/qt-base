FROM ubuntu:bionic
MAINTAINER Derick Schoonbee <derick.schoonbee@gmail.com>

RUN apt-get update && apt-get clean # 20190516
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:beineri/opt-qt-5.11.1-bionic && apt-get update && apt-get clean #
RUN apt-get install -y qt511-meta-minimal qt5-qmake curl wget
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 8C718D3B5072E1F5
RUN echo "deb http://repo.mysql.com/apt/ubuntu/ bionic mysql-8.0" >> /etc/apt/sources.list.d/mysql.list
RUN apt-get update && apt-get install -y mysql-client
RUN ln -s /opt/qt511/bin/qt511-env.sh /etc/profile.d/
ENV QT_BASE_DIR=/opt/qt511
ENV QTDIR="${QT_BASE_DIR}"
ENV PATH="${QT_BASE_DIR}/bin:${PATH}"
