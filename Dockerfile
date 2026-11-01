FROM nginx:alpine
ARG APP_VERSION=dev
COPY index.html /usr/share/nginx/html/index.html
RUN sed -i "s/__APP_VERSION__/${APP_VERSION}/" /usr/share/nginx/html/index.html
EXPOSE 80
