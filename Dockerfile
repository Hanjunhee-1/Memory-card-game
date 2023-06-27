FROM nginx:latest

WORKDIR /usr/share/nginx/html

COPY index.html .
COPY index.js .
COPY style.css .

COPY img /usr/share/nginx/html/img

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]