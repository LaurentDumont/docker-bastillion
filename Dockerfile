FROM openjdk:13-alpine
RUN apk add --no-cache wget tar

#RUN wget --quiet --progress=dot:mega --show-progress https://github.com/bastillion-io/Bastillion/releases/download/v3.09.00/bastillion-jetty-v3.09_00.tar.gz
#RUN mkdir /opt/bastillion && \
#  tar --extract --verbose --file bastillion-jetty-v3.09_00.tar.gz --strip-components 1 --directory /opt/bastillion

WORKDIR /opt/bastillion/jetty/

CMD "java" "-Xms1024m" "-Xmx1024m" "-jar" "start.jar"
