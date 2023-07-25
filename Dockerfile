# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy your Flask application code into the container
COPY . .

# Expose the port that your Flask application will run on (replace PORT_NUMBER with the appropriate port)
EXPOSE 5000

# Command to run your Flask application when the container starts
CMD ["python", "main.py"]