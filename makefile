# command for init project
init: build install

# command for start app
up:
	docker compose up -d

# command for build app
build:
	docker compose up -d --build

# command for exec in app container
exec:
	docker exec -it app /bin/sh

# command for install composer
install:
	docker exec -i app composer install --dev

# command for run lint code
lint:
	docker exec -i app composer lint

# command for run tests
test:
	docker exec -i app composer tests

# command for run tests coverage
test-coverage:
	docker exec -i app composer tests-coverage

# command for run tests mutation
test-mutation:
	docker exec -i app composer tests-mutation

