FROM node:lts

WORKDIR /login-angular17

COPY . /login-angular17

RUN npm install -g @angular/cli 

RUN npm install

RUN npm uninstall @angular-devkit/build-angular

RUN npm install --save-dev @angular-devkit/build-angular

RUN ng update @angular/cli @angular/core --allow-dirty --force

CMD ["ng", "serve", "--host", "0.0.0.0"]

EXPOSE 4200
