# Step 1: Use an official Python runtime as the base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the application files into the container
COPY . /app

# Step 4: Install dependencies (Flask)
RUN pip install flask

# Step 5: Expose the port that the Flask app runs on
EXPOSE 5000

# Step 6: Command to run the application
CMD ["python", "app.py"]
