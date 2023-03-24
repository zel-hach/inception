FROM alpine:3.11

RUN apk add --update nodejs npm
RUN npm install express ejs
WORKDIR /site
COPY ./JS/site.js index.js
RUN mkdir CSS HTML images
COPY ./CSS ./CSS
COPY ./HTML ./HTML
COPY ./images ./images
EXPOSE 5000

CMD ["node", "index.js"]
