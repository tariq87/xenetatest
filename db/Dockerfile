FROM postgres:10.1
RUN mkdir -p /mnt
COPY rates.sql /mnt
COPY init.sh /docker-entrypoint-initdb.d/init.sh
RUN chmod +x /docker-entrypoint-initdb.d/init.sh
EXPOSE 5432

