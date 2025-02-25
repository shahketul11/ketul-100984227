# Use an official runtime as a parent image
FROM node:18  

# Set the working directory in the container
WORKDIR /app

# Copy the application files
COPY . .

# Install dependencies (Modify based on your stack)
RUN npm install  # For Node.js
# RUN pip install -r requirements.txt  # For Python

# Expose port 8080 (Required for Cloud Run)
EXPOSE 8080

# Start the application
CMD ["npm", "start"]  # For Node.js
# CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]  # For Python Flask
