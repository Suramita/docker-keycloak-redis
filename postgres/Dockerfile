FROM postgres:latest

# Install the pgaudit extension
RUN apt-get update && \
    apt-get install -y postgresql-17-pgaudit

# Copy the modified postgresql.conf to enable logging and pgaudit
COPY postgresql.conf /etc/postgresql/postgresql.conf

# Set the PostgreSQL config path
ENV POSTGRES_INITDB_ARGS="--data-checksums"

# Ensure the extension is created after database startup
COPY init-pgaudit.sh /docker-entrypoint-initdb.d/init-pgaudit.sh

