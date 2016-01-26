FROM alpine:3.1

RUN apk add --update python py-pip

RUN pip install luigi sqlalchemy --upgrade

EXPOSE 8082
ADD client.cfg /etc/luigi/client.cfg

CMD ["luigid"]
