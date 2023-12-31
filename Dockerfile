
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9
#
# Set the working directory in the container
WORKDIR /app
#
# Copy the requirements file to the working directory
COPY ./requirements.txt /app/requirements.txt

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt
#
## Copy the application code to the container
COPY ./main.py /app/main.py

# Start the FastAPI application with Gunicorn

CMD ["gunicorn", "main:app", "-w", "4", "-k", "uvicorn.workers.UvicornWorker", "--bind", "0.0.0.0:8000"]
