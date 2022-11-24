FROM maven:latest
COPY . /codes/
CMD ["mvn", "install"]
