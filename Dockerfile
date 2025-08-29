# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install the dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy all the other project files into the container
COPY . .

# Expose the port that the Flask app will run on
EXPOSE 8080

# Run the app.py file when the container starts
CMD ["python", "app.py"]