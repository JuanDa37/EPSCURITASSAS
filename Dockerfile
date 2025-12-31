# Imagen oficial y soportada de Java 17
FROM eclipse-temurin:17-jdk

# Directorio de trabajo
WORKDIR /app

# Copiamos el proyecto
COPY . .

# Compilamos con Maven Wrapper
RUN ./mvnw clean package

# Puerto (Render usa PORT dinámico)
EXPOSE 8080

# Ejecutar la app
CMD ["java", "-jar", "target/*.jar"]
