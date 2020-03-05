BIN_DIR := vendor/bin

install: ## Install the project
install:
	@echo "Generating files for $(company)\\$(project) namespace..."
	@find . -type f -exec sed -i "s/Foo/$(company)/g" {} \; -exec sed -i "s/Bar/$(project)/g" {} \;
	@composer dump-autoload
	@rm .travis.yml
	@echo "# $(project)" > README.md

test: ## Execute all the tests
test:
	$(BIN_DIR)/phpunit
