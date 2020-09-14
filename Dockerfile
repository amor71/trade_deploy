FROM python:3.8.5-slim

MAINTAINER amor71 <https://github.com/amor71>

# TA-LIB
RUN apt-get update && apt-get install -y gcc
RUN apt-get update && apt-get install -y make
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
RUN wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz && \
  tar -xvzf ta-lib-0.4.0-src.tar.gz && \
  cd ta-lib/ && \
  ./configure --prefix=/usr && \
  make && \
  make install

RUN rm -R ta-lib ta-lib-0.4.0-src.tar.gz
RUN pip install numpy

# LiuAlgoTrader
RUN pip install liualgotrader

# PostgreSQL
RUN apt-get update && apt-get install -y postgresql


# get schemas
RUN wget https://raw.githubusercontent.com/amor71/LiuAlgoTrader/master/setup/db-script.sql

USER postgres
RUN   /etc/init.d/postgresql start &&\
    psql --command "CREATE USER docker WITH SUPERUSER PASSWORD 'docker';" &&\
    createdb -O docker tradedb &&  psql -d tradedb -f ./db-script.sql


ENV PYTHONUNBUFFERED=TRUE
ENV PYTHONDONTWRITEBYTECODE=TRUE