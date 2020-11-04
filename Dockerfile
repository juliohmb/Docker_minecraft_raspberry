FROM arm32v7/openjdk:8
RUN apt update && apt upgrade -y
WORKDIR /minecraft
RUN curl https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.12.2-14.23.5.2854/forge-1.12.2-14.23.5.2854-installer.jar --output installer.jar
RUN java -jar installer.jar --installServer
EXPOSE 25565
CMD [ "java", "-Xms1G", "-Xmx2G", "-jar", "forge-1.12.2-14.23.5.2854.jar", "nogui" ]
