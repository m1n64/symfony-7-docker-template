up:
	docker-compose up -d

stop:
	docker-compose stop

down:
	docker-compose down

build:
	docker-compose down -v --remove-orphans
	docker-compose rm -vsf
	docker-compose up -d --build

test:
	docker-compose exec cvnews-php vendor/bin/phpunit ./tests

bash:
	docker-compose exec -u www-data cvnews-php bash

bash_root:
	docker-compose exec -u 0 cvnews-php bash

