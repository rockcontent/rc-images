FROM mongo:3

MAINTAINER Lucas Teles <lucasteles22@gmail.com>

CMD ["--replSet", "rs0"]

RUN echo "mongo --eval \"rs.initiate()\"" > /docker-entrypoint-initdb.d/setup.sh
