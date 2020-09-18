FROM postgres:12

MAINTAINER amor71 <https://github.com/amor71>


# get schemas
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
RUN wget https://raw.githubusercontent.com/amor71/LiuAlgoTrader/master/setup/db-script.sql

USER postgres

# Expose the PostgreSQL port
EXPOSE 5432

RUN pg_createcluster 12 main &&\
    pg_ctlcluster 12 main start &&\
    psql --command "CREATE USER docker WITH SUPERUSER PASSWORD 'docker';" &&\
    createdb -O docker tradedb &&\
    psql -d tradedb -f ./db-script.sql

WORKDIR /opt/db

RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/12/main/pg_hba.conf

CMD ["/usr/lib/postgresql/12/bin/postgres", "-D", "/var/lib/postgresql/12/main", "-c", "config_file=/etc/postgresql/12/main/postgresql.conf"]