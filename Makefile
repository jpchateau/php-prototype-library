BIN_DIR := bin

.PHONY: install tests

# Install the project
install:
	@echo "Generating files for $(company)\\$(project) namespace..."
	@find ./src -type f -exec sed -i "s/MyCompany\\\\MyProject/$(company)\\\\$(project)/g" {} \;
	@find ./tests -type f -exec sed -i "s/MyCompany\\\\MyProject/$(company)\\\\$(project)/g" {} \;
	@sed -i.bak "s/jpchateau\/php-prototype-library/$(project)/g" composer.json
	@sed -i.bak "s/Quickly initiate the development of a new PHP library/$(project) description/g" composer.json
	@sed -i.bak "s/MyCompany\\\\\\\\MyProject/$(company)\\\\\\\\$(project)/g" composer.json
	@composer dump-autoload
	@rm .travis.yml *.bak
	@echo "# $(project)" > README.md

# Execute all the tests
tests:
	$(BIN_DIR)/phpunit
