#Derived from official mysql image (our base image)
FROM mysql
#Add a database and user
ENV MYSQL_DATABASE pucsdStudent
ENV MYSQL_USER pucsd
ENV MYSQL_PASSWORD pucsd
 
#Add content of the .sql files/directory to your Docker image
COPY ./scripts/ /docker-entrypoint-initdb.d/
