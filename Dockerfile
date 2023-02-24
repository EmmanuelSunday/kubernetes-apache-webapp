    #Specifying the base image
FROM centos:centos7

    # Adding descriptions 
LABEL description="This Dockerfile builds an apache image"
LABEL Maintainer="Emmanuel Sunday"

    #Executing command to update the httpd package
RUN yum -y update
    # Executing the command to install Apache
RUN yum -y install httpd
    # Copying the required files from the local drive to the container working directory
COPY index.html /var/www/html/

    # Exposing the required port
EXPOSE 80
    #Starting the apache using 
    #systemctl start httpd
ENTRYPOINT [ "/usr/sbin/httpd" ]
CMD ["-D", "FOREGROUND"]