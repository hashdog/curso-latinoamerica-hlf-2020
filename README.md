
# Hola!
Bienvenidos al curso de Hyperledger Fabric LatinoAmerica 2020, este repositorio fue creado para las personas que necesiten una terminal de ubuntu para poder correr el material del curso.

# Requerimientos
 - Tener instalado [Docker Desktop](https://docs.docker.com/desktop/) - https://docs.docker.com/desktop/. (Instalando esta opcion ya incluye el docker-compose )
 - Tener instalado [Docker Compose](https://docs.docker.com/compose/install/) - https://docs.docker.com/compose/install/
 
# Empenzando

Clonar el proyecto

    git clone https://github.com/hashdog/curso-latinoamerica-hlf-2020.git

Entrar al directorio

    cd curso-latinoamerica-hlf-2020

Ahora solo tenes que correr el siguiente comando:

    docker-compose run ubuntu bash

Este comando te va abrir una terminal de ubuntu, apuntando ya a tu directorio `curso`


# Beneficios

Usando este docker-compose.yaml te brinda lo siguiente:

 - Monta el directorio `curso` para compartir archivos entre tu local y docker
 - Conserva el historial de los comandos escritos en consola
 - Esta imagen ya trae instalado todo lo necesario para el curso - https://github.com/blockchainempresarial/curso-hyperledger-fabric/blob/master/scripts/prerreq.sh
 - Comparte el docker.sock para poder utilizar docker dentro del contenedor