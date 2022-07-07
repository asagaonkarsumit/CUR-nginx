FROM nginx:1.17.3



# Remove the default nginx.conf
RUN rm /etc/nginx/conf.d/default.conf

# Replace with our own nginx.conf
COPY nginx.conf /etc/nginx/conf.d/

RUN mkdir etc/nginx/ssl

#RUN mkdir etc/ssl-folder
RUN mkdir -p  /app/ssl-folder

#RUN  apt-get install software-properties-common  && add-apt-repository ppa:certbot/certbot  && apt-get update  && apt-get install python-certbot-nginx



COPY privkey.pem  /etc/nginx/ssl/

COPY fullchain.pem /etc/nginx/ssl/

