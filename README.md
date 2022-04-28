# bashSonarScanner

<p align="center">
  <img width="300px" src="./imagenes/sonarDocker.png">
</p>

[![](https://vistr.dev/badge?repo=bogarin.bogarin&corners=square)](https://github.com/Elfocrash/vistr.dev)
[![](https://img.shields.io/badge/-@bogarin-%23181717?style=flat-square&logo=github)](https://github.com/bogarin)

## :open_mouth:  que es bashSonarScanner?

Es un script que se encarga de ejecutar el programa sonar-scanner en una carpeta local determinada, establecida en un contenedor, para ejecutar el sonar-scanner necesitas tener instalado docker.

## :thinking: como funciona bashSonarScanner?

llamando la función en la terminal preferida del programador indicando los valores que te permite sonarqube 🧑🏿‍💻 ejemplo: 
cuando configuras un proyecto en javascript o python te dará al final d ela configuración una información similar a esta.

```bash
sonar-scanner \
  -Dsonar.projectKey=pruebas \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=3910de611047006cb3ca29c5e5ff8bc89f5d3757

```

lo cual de estos datos solamente necesitaras estos campos en este orden.

```bash
 sonarScanner Dsonar.host.url Dsonar.login path_local_proyecto

```

estableciendo los datos del ejemplo:

```bash
sonarScanner http://localhost:9000 3910de611047006cb3ca29c5e5ff8bc89f5d3757 /pathlocal/proyecto

```

```
## :mechanical_arm: Como instalarlo?

