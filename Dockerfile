FROM node:alpine

WORKDIR /login-angular17

COPY . /login-angular17

# npm
RUN npm install -g @angular/cli 
RUN npm install

# fixing dependency error
RUN npm uninstall @angular-devkit/build-angular
RUN npm install --save-dev @angular-devkit/build-angular
RUN ng update @angular/cli @angular/core --allow-dirty --force

CMD ["ng", "serve", "--host", "0.0.0.0", "--poll", "500"]
EXPOSE 4200 49153
