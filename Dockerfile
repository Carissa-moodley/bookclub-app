# Use the official Python image as a base image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /app
# Copy the project
COPY . /app/
# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
# Set up Django
RUN python manage.py migrate
# Expose the port the app runs on
EXPOSE 8000
# Run the application
CMD python manage.py runserver 0.0.0.0:8000