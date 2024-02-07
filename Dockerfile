ARG JAVA_BASE=21

FROM eclipse-temurin:${JAVA_BASE} as base

FROM base as build
COPY ./main.java /app/main.java
WORKDIR /app
RUN javac main.java 

FROM base
COPY --from=build /app/main.class /app/main.class
WORKDIR /app
CMD ["java", "main"] 
