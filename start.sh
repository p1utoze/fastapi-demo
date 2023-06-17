docker build -t farmsense -f Dockerfile .
docker run -d -p 80:8080 --env-file .env.prod  farmsense
