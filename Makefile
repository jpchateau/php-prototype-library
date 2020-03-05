BIN_DIR=vendor/bin

install: ## Install the project
install:
	composer dump-autoload

test: ## Execute all the tests
test:
	$(BIN_DIR)/phpunit