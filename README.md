# PHP library prototype

[![Build Status](https://travis-ci.org/jpchateau/php-prototype-library.svg?branch=master)](https://travis-ci.org/jpchateau/php-prototype-library)

## Features

The aim of this prototype is to save time when starting to develop a new PHP library.
It will:
* Download and install basic files - a class and a test class
* Install QA tools: phpunit, phpstan and phpcs
* Add a basic .gitignore file
* Generate a basic README fle
* Replace the genuine namespace with your own namespace

## Usage

Fill the vendor and app variables with your own values, then run:

```shell
$ VENDOR=company_name;APP=library_name
$ composer create-project jpchateau/prototype-php-library $APP && cd $APP
$ find . -type f -exec sed -i "s/Foo/$VENDOR/g" {} \; -exec sed -i "s/Bar/$APP/g" {} \;
$ composer dump-autoload
$ echo -e "# $APP" > README.md
```

Do not forget to pick up a license and start working on your new PHP library right now!

## QA Tools

```shell
$ ./vendor/bin/phpunit
$ ./vendor/bin/phpcs src/ --standard=PSR2
$ ./vendor/bin/phpstan analyse -l 7 src/
```
