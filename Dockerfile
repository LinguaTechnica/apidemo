# Use an official Python runtime as a parent image
FROM python:3.7

USER jenkins
# Set the working directory to /app
WORKDIR /var/lib/jenkins/apidemo

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN python3 -m venv env
RUN . env/bin/activate
RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN python3 tests.py

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
