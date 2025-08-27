# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-slim

# Set a fixed directory for the application files
WORKDIR /opt/minecraft

# Copy the PaperMC server jar file and the start script
COPY paper-1.16.5-794.jar paper.jar
COPY start.sh .
RUN chmod +x start.sh

# Create and set the working directory for the server data
RUN mkdir /data
WORKDIR /data

# Expose the Minecraft server port
EXPOSE 25565

# Run the start script from its fixed location when the container launches
CMD ["/opt/minecraft/start.sh"]
