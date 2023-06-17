#FROM python:3.9
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9
#
# Set the working directory in the container
WORKDIR /app
#
# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt
#
## Copy the application code to the container
COPY main.py .
#
## Expose the port on which the FastAPI application will run
#EXPOSE 80
#
## Start the FastAPI application with Gunicorn
#CMD ["gunicorn", "main:app", "-w", "4", "-k", "uvicorn.workers.UvicornWorker", "--bind", "0.0.0.0:8000"]