FROM golang
MAINTAINER Jean-Pierre PRUNARET <jean-pierre+git@prunetwortk.fr>

RUN go get -u github.com/dinedal/textql/...
