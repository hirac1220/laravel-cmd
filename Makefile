SHELL = $(PWD)/scripts/SHELL

env:
	cp -i ./env-example.sh env.sh

update:
	./scripts/update.sh

install: env.sh
	./scripts/start.sh

apache:
	./scripts/apache.sh

start:
	./scripts/start.sh