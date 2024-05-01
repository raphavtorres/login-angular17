FROM node:21

RUN npm install -g @angular/cli@17

WORKDIR /

ENV APP_NAME '.'
ENV ROUTING 'true'
ENV STANDALONE 'true'
ENV STRICT 'true'
ENV STYLE 'scss'

CMD ng new $APP_NAME --routing=$ROUTING --standalone=$STANDALONE --strict=$STRICT --style=$STYLE \
    && ng serve --host 0.0.0.0 --port 4200

EXPOSE 4200