sonarScanner() {
    if [ $# -eq 0 ]; then
        echo "pasos para usar sonarScanner: "
        echo "1. tener instalado Docker"
        echo "2. tener el sistema de sonarCube"
        echo "3. crear/tener el archivo sonar-project.properties en le proyecto ha escanear en la raiz del proyecto y"
        echo "tener como minimo en el archivo sonar-project.properties  sonar.projectKey del proyecto ha escanear example: sonar.projectKey=Dsonar.projectKey"
        echo "4. tener la url de sonarCube en la variable <Dsonar.host.url> sin dobles comillas  exmaple: http://localhost:9000"
        echo "5. tener el token de sonarCube del proyecto en la variable <Dsonar.login> sin dobles comillas exmaple: 29f109c3edd5619cec0ed750b63420793b06559b"
        echo "6. tener el path del proyecto en la local para la variable <path_proyecto> sin dobles comillas exmaple: /PathLocal/workspace/project"
        echo "7. ejecutar sonarScanner en este orden: sonarScanner <Dsonar.host.url> <Dsonar.login> <path_proyecto>"
        echo "para mas informacion de sonarScanner visitar https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/"
        return 1
    fi

    if [ -z "$1" ]; then
        echo "Uso: es obligatorio sonarCanner $1 <Dsonar.host.url>"
        return 1
    fi

    if [ -z "$2" ]; then
        echo "Uso: es obligatorio sonarCanner $1 <Dsonar.login>"
        return 1
    fi

    if [ -z "$3" ]; then
        echo "Uso: es obligatorio sonarCanner $1 $2 <path_proyecto>"
        return 1
    fi
    
    docker run \
    --network=host \
    --rm \
    -e SONAR_HOST_URL=$1  \
    -e SONAR_LOGIN=$2 \
    -v "$3:/usr/src" \
    sonarsource/sonar-scanner-cli
}