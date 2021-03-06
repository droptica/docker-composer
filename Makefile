build: build-1.0 build-1.1 build-1.2 build-1.3 build-master

test: build test-1.0 test-1.1 test-1.2 test-1.3 test-master

build-base:
	docker build -t composer/composer:base base
	docker build -t composer/composer:base-php5 base/php5

build-master: build-base
	docker build -t composer/composer:master master
	docker build -t composer/composer:master-php5 master/php5

test-master:
	@echo -n "master\t\t\t"
	@docker run composer/composer:master --version --no-ansi
	@echo -n "master-php5\t\t"
	@docker run composer/composer:master-php5 --version --no-ansi

build-1.0: build-base
	docker build -t composer/composer:1.0 1.0
	docker build -t composer/composer:1.0-php5 1.0/php5

test-1.0:
	@echo -n "1.0\t\t\t"
	@docker run composer/composer:1.0 --version --no-ansi
	@echo -n "1.0-php5\t\t"
	@docker run composer/composer:1.0-php5 --version --no-ansi

build-1.1: build-base
	docker build -t composer/composer:1.1 1.1
	docker build -t composer/composer:1.1-php5 1.1/php5

test-1.1:
	@echo -n "1.1\t\t\t"
	@docker run composer/composer:1.1 --version --no-ansi
	@echo -n "1.1-php5\t\t"
	@docker run composer/composer:1.1-php5 --version --no-ansi

build-1.2: build-base
	docker build -t composer/composer:1.2 1.2
	docker build -t composer/composer:1.2-php5 1.2/php5

test-1.2:
	@echo -n "1.2\t\t\t"
	@docker run composer/composer:1.2 --version --no-ansi
	@echo -n "1.2-php5\t\t"
	@docker run composer/composer:1.2-php5 --version --no-ansi

build-1.3: build-base
	docker build -t composer/composer:1.3 1.3
	docker build -t composer/composer:1.3-php5 1.3/php5

test-1.3:
	@echo -n "1.3\t\t\t"
	@docker run composer/composer:1.3 --version --no-ansi
	@echo -n "1.3-php5\t\t"
	@docker run composer/composer:1.3-php5 --version --no-ansi
