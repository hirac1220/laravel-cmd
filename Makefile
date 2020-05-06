SHELL = $(PWD)/SHELL

env:
	cp -i env-example.sh env.sh

update: env
	./scripts/update.sh

install-v5.5:
	./scripts/install-v5.5.sh

install-latest:
	./scripts/install.sh

apache:
	./scripts/apache.sh

start:
	./scripts/start.sh

create-db:
	./scripts/create-db.sh

phpmyadmin:
	./scripts/phpmyadmin.sh

create-table: env
	./scripts/create-tb.sh

migrate:
	./scripts/migrate.sh

mysql:
	mysql -u root -p

model: env
	./scripts/model.sh

auth:
	./scripts/auth

scaffold:
	./scripts/scaffold.sh

debugger:
	composer require barryvdh/laravel-debugbar --dev