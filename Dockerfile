FROM ubuntu:22.04

RUN apt-get update && apt-get clean # 2022-01-09
RUN apt-get install -y software-properties-common
RUN apt-get update && apt-get install -y \ 
    libqt5concurrent5 \
    libqt5gui5 \
    libqt5opengl5  \
    libqt5printsupport5  \
    libqt5qml5 \
    libqt5qmlmodels5  \
    libqt5qmlworkerscript5  \
    libqt5script5 \
    libqt5sql5-mysql \
    libqt5xml5  \
    libqt5xmlpatterns5 \
    mysql-client \
    libcurl4 \
    zip unzip p7zip vim bzip2 \
    s3cmd \
    && apt-get clean