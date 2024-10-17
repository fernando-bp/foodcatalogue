# Se utiliza una imagen de OpenJDK 17 como base
FROM openjdk:17-jdk-slim

# Se establece el directorio de trabajo en /opt
WORKDIR /opt

# Se copia el archivo JAR generado por Maven en la carpeta /opt
COPY target/*.jar /opt/app.jar

# Se especifica el punto de entrada para el contenedor Docker
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar