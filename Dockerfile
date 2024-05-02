FROM node:alpine

WORKDIR /front-end

RUN npm install -g @angular/cli@17 

COPY package.json .

RUN npm install 

COPY . .

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0"]