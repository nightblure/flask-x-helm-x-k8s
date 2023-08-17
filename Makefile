runserver:
	flask --app main run --host=0.0.0.0

up:
	docker-compose up -d --build