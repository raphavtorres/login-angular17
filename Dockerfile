FROM node:21

WORKDIR /front-end

COPY . .

RUN npm install
RUN npm install @angular/cli@17 -g

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0"]