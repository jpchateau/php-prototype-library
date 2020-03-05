# PHP Library Prototype [![Build Status](https://travis-ci.org/jpchateau/php-prototype-library.svg?branch=master)](https://travis-ci.org/jpchateau/php-prototype-library)

*PHP Library Prototype is a tool to quickly initiate the development of a PHP library.*

## Features

The aim of this prototype is to save time when starting to develop a new PHP library.
It will:
* Download and install basic files - a class and its test class
* Install QA tools: phpunit, phpstan and phpcs
* Generate basic .gitignore and README files

## Requirements

* PHP >7.1
* php-xml extension
* php-mbstring extension
* [Composer](https://getcomposer.org/download/)

## Usage

Run these command lines with your own values for `directory`, `company` and `project`:

```shell
$ DIRECTORY=mylib
$ composer create-project jpchateau/prototype-php-library $DIRECTORY && cd $DIRECTORY
$ make company=MyCompanyName project=MyProjectName install
```

You are ready to develop!  
Do not forget to pick up a license and edit the description inside the `composer.json` file ;)

## QA Tools

```shell
$ make test
$ ./vendor/bin/phpcs src/ --standard=PSR2
$ ./vendor/bin/phpstan analyse -l 7 src/
```