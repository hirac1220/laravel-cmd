SHELL = $(PWD)/SHELL

env:
	chmod -R 755 ./scripts
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

debugger:
	# make swap file
	sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
	sudo /sbin/mkswap /var/swap.1
	sudo /sbin/swapon /var/swap.1
	composer require barryvdh/laravel-debugbar --dev

heroku:
	./scripts/heroku.sh