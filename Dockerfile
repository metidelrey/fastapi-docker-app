# Use an official Python runtime as a parent image
FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install FastAPI and Uvicorn
RUN pip install fastapi uvicorn

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV PORT=8000

# Run the app with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
