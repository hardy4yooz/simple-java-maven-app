# FROM 指定基础镜像
FROM openjdk:8-jdk-alpine
# ARG 构建参数
ENV JAR_FILE=*.jar
COPY ${JAR_FILE} app.jar
# 暴露端口
EXPOSE 8080
# CMD 容器启动命令
CMD ["java", "-jar", "/app.jar"]
