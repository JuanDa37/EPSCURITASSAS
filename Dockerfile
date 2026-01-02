# =========================
# BUILD STAGE
# =========================
FROM eclipse-temurin:17-jdk AS build
WORKDIR /build
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

# =========================
# RUNTIME STAGE
# =========================
FROM eclipse-temurin:17-jdk
WORKDIR /app

# 👇 COPIAMOS EL JAR REAL
COPY --from=build /build/target/*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
