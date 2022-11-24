FROM maven:latest
WORKDIR codes
COPY . .
CMD ["mvn", "install"]
