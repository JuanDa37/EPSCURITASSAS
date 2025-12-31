# Imagen oficial Java 17
FROM eclipse-temurin:17-jdk

# Directorio de trabajo
WORKDIR /app

# Copiamos todo el proyecto
COPY . .

# 🔑 Dar permiso de ejecución al Maven Wrapper
RUN chmod +x mvnw

# Compilar el proyecto
RUN ./mvnw clean package

# Puerto (Render usa PORT dinámico)
EXPOSE 8080

# Ejecutar la aplicación
CMD ["java", "-jar", "target/*.jar"]
