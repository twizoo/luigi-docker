FROM quay.io/twizoo/base:latest

RUN pip install luigi sqlalchemy tornado

EXPOSE 8082
ADD client.cfg /etc/luigi/client.cfg

CMD luigid --logdir /logs/luigi
