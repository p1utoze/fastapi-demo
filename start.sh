docker build -t python-app -f Dockerfile .
docker run -d -p 80:8080 --env-file .env.prod python-app
