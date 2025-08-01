# command for init project
init: build install

# command for start app
up:
	docker compose up -d

# command for build app
build:
	docker compose up -d --build

# command for exec in container
exec:
	docker exec -it scribe-plugin /bin/sh

# command for install pkg
install:
	docker exec -i scribe-plugin composer install --dev

# command for run verify code
code-check:
	docker exec -i scribe-plugin composer cs-check

# command for run tests
test:
	docker exec -i scribe-plugin composer tests