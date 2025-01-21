# Usar una imagen base oficial de OpenJDK 17
FROM amazoncorretto:17-alpine

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR al contenedor
COPY target/auth-service-0.0.1-SNAPSHOT.jar /app/app.jar
ENV SPRING_CONFIG_PORT=6000

# Exponer el puerto en el contenedor
EXPOSE $SPRING_CONFIG_PORT
# Establecer el comando para ejecutar la aplicación
CMD ["java", "-Dserver.port=${SPRING_CONFIG_PORT}", "-jar", "/app/app.jar"]