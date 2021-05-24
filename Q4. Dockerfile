FROM nginx:alpine
#using nginx image

LABEL maintainer=Farhaan Shamsee

#installing LUA
RUN curl -R -O http://www.lua.org/ftp/lua-5.4.3.tar.gz
RUN tar zxf lua-5.4.3.tar.gz
RUN cd lua-5.4.3
RUN make all test

#copying files from local directory to image
COPY ./http.conf /etc/nginx/ 
COPY ./index.html /etc/nginx/

#exposing the port
EXPOSE 80
