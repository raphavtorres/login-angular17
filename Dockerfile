FROM node:lts-alpine

USER node

WORKDIR /app

COPY . .
# COPY package.json .

RUN npm install -g @angular/cli 
RUN npm install

# RUN npm uninstall @angular-devkit/build-angular
# RUN npm install --save-dev @angular-devkit/build-angular

EXPOSE 4200

# CMD ["ng", "serve", "--host", "0.0.0.0", "--poll", "500"]