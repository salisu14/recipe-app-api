FROM python:3.7-alpine
MAINTAINER Mahshell Soft Ltd

# Define environment variable
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
# Install any needed packages specified in requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./app /app

RUN adduser -D user
USER user