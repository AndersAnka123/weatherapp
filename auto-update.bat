@echo off
cd C:\Docker\weatherapp

echo === Pulling latest changes ===
git pull

docker build -t weatherapp .

docker-compose up -d

docker-compose restart weatherapp

pause