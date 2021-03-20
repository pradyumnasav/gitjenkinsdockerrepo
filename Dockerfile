#base image nginx with tag - latest
From nginx:latest
#Adding custom html file from github
ADD https://github.com/pradyumnasav/gitjenkinsdockerrepo.git /usr/share/nginx/html
#Adding read permissions to custom index1.html
RUN chmod -r /usr/share/nginx/html/index1.html
CMD ["nginx", "-g", "daemon off;"]