build:
	docker build -t sonarqube-cox:latest -f docker/Dockerfile .

deploy:
	docker-compose up -d

all:
	docker build -t sonarqube-cox -f docker/Dockerfile .
	docker-compose up -d

destroy:
	docker-compose down
