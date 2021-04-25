#base image nginx with tag -  latest File changed auto build and push to docker
From nginx:latest
RUN mkdir -p /home/html
WORKDIR /home/html
COPY index.html .
RUN cp -p index.html /usr/share/nginx/html/
#Adding read permissions to custom index.html
#RUN chmod -r /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]
