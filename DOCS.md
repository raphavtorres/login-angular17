# Login Angular 17

Fullstack project - login app with angular 17 and SpringBoot + Docker


## Angular starter
In case you want to start a angular project from scratch
Create a Dockerfile with the code in dockerfile-starter.txt

## Running project
### Run container
```bash
$ docker compose up
```

### Angular project port
http://localhost:4200

### Create component
```bash
$ docker exec -it angular-app ng generate component <component_name>
```

### Running other commands
```bash
$ docker exec -it angular-app ng ...
```