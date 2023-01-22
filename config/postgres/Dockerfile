FROM postgres

COPY initdb.sql /docker-entrypoint-initdb.d/

# Export the port
EXPOSE 5432

# Database credentials
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
