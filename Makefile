SHELL = $(PWD)/SHELL

env:
	cp -i env-example.sh env.sh

update: env
	./scripts/update.sh

install:
	./scripts/install.sh

apache:
	./scripts/apache.sh

start:
	./scripts/start.sh

create-db:
	./scripts/create-db.sh

phpmyadmin:
	./scripts/phpmyadmin.sh