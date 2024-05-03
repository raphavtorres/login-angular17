FROM node:lts

WORKDIR /login-angular17

RUN npm install -g @angular/cli 

COPY package.json /login-angular17/

COPY . /login-angular17

RUN npm install
RUN ls && sleep 15

CMD ["ng", "serve", "--host", "0.0.0.0"]

EXPOSE 4200
