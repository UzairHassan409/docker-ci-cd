# Use official Python image as base
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY . .

# Expose port 5000 to access the app
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
