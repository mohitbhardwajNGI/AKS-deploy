# Base image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app
#this is a test2
# Copy dependency file first (best practice for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py .

# Expose port
EXPOSE 80

# Run the app
CMD ["python", "app.py"]

