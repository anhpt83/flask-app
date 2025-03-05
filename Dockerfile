# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy files and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Run the Flask app
CMD ["python", "app.py"]
