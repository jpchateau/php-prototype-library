BIN_DIR := vendor/bin

install: ## Install the project
install:
	@echo "Generating files for $(company)\\$(project) namespace..."
	@find ./src -type f -exec sed -i "s/MyCompany\\\\MyProject/$(company)\\\\$(project)/g" {} \;
	@find ./tests -type f -exec sed -i "s/MyCompany\\\\MyProject/$(company)\\\\$(project)/g" {} \;
	@sed -i.bak "s/jpchateau\/php-prototype-library/$(project)/g" composer.json
	@sed -i.bak "s/Quickly initiate the development of a PHP library/$(project) description/g" composer.json
	@sed -i.bak "s/MyCompany\\\\\\\\MyProject/$(company)\\\\\\\\$(project)/g" composer.json
	@composer dump-autoload
	@rm .travis.yml *.bak
	@echo "# $(project)" > README.md

test: ## Execute all the tests
test:
	$(BIN_DIR)/phpunit
