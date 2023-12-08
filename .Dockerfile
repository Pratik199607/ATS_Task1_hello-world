# Use an official Python runtime based on Alpine as a parent image
FROM python:3.8-alpine

# Set the working directory in the container to /app
WORKDIR /hello_world

# Add the current directory contents into the container at /app
ADD . /hello_world

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -q -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD ["python", "app.py"]
