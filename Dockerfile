# Base image required to build our container image
FROM python:3

# Copy file/directory from the Docker client's current directory into the Docker image itself
COPY app /app

# The WORKDIR instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile
WORKDIR /app

# Copy file to /app in the Docker image
COPY requirements/requirements.txt .

# RUN instruction will execute any commands in a new layer on top of the current image and commit the results.
# PIP install the dependencies in the image
RUN pip3 install -r requirements.txt

# An ENTRYPOINT allows you to configure a container that will run as an executable.
ENTRYPOINT ["python3", "hello_world.py"]
