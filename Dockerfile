FROM ubuntu:16.04
MAINTAINER Tomoki Sugiura

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl wget language-pack-ja-base language-pack-ja
RUN update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
# RUN apt-add-repository ppa:texlive-backports/ppa
RUN apt-get install texlive-lang-japanese texlive-science texlive-extra-utils texlive-luatex -y
RUN apt-get install golang-go -y && go version
