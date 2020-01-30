web_up:
	docker-compose up web

web_build:
	docker-compose up --build web

web_container:
	docker-compose exec web zsh

web_stop:
	docker-compose stop web