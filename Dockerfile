FROM ubuntu:focal

RUN apt-get update && apt-get clean # 20201027
RUN apt-get install -y software-properties-common
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 8C718D3B5072E1F5
RUN echo "deb http://repo.mysql.com/apt/ubuntu/ bionic mysql-8.0" >> /etc/apt/sources.list.d/mysql.list
RUN apt-get update && apt-get install -y mysql-client
RUN add-apt-repository ppa:beineri/opt-qt-5.15.0-focal && apt-get update && apt-get clean #
RUN apt-get install -y qt515base qt5-qmake curl wget openssl1.1
RUN ln -s /opt/qt515/bin/qt512-env.sh /etc/profile.d/
ENV QT_BASE_DIR=/opt/qt515
ENV QTDIR="${QT_BASE_DIR}"
ENV PATH="${QT_BASE_DIR}/bin:${PATH}"
