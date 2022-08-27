# Docker SageMath
Proyecto de docker para levantar un laboratio de jupyter con el kernel de [Sagemath](https://sagemath.org/).

Tener en cuenta que el laboratorio a crear utiliza el usuario root y desactiva la autenticación, por ello sólo es para uso personal y no debería ser usado en un ambiente de producción.


## Requerimientos
- [Docker Engine](https://www.docker.com/products/docker-engine)
- [Docker Compose](https://docs.docker.com/compose/install/)
  
## Instalación

- Duplicar el archivo `.env.example` y renombrarlo a `.env`, luego editar el archivo para configurar el ambiente.

- Construir la imagen del contenedor
```bash
docker-compose build
```


## Ejecución
- Levantar el contenedor dejando en segundo plano
```bash
docker-compose up -d
```
- Ingresar al laboratorio desde `localhost:8888`

## Observaciones
- Todos los notebooks creados se verán reflejados en la carpeta `notebooks` del directorio actual.
