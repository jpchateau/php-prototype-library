# PHP Library Prototype [![Build Status](https://travis-ci.org/jpchateau/php-prototype-library.svg?branch=master)](https://travis-ci.org/jpchateau/php-prototype-library)

*PHP Library Prototype is a tool to quickly initiate the development of a PHP library.*

## Features

The aim of this prototype is to save time when starting to develop a new PHP library.
It will:
* Download and install basic files - a class and its test class with proper namespaces
* Install QA tools: phpunit, phpstan and phpcs
* Generate basic .gitignore and README files

`.gitignore` file is based upon [gitignore.io API](https://www.gitignore.io/).

## Requirements

* PHP >7.2
* php-xml extension
* php-mbstring extension
* [Composer](https://getcomposer.org/download/)

Check the [PHP roadmap](https://www.php.net/supported-versions.php) to see the PHP versions supported by this library.

## Usage

Creating a library is a simple two-step process.  
1. First, create a project from this prototype. Replace `MyDirectory` with your own value:

```bash
$ composer create-project jpchateau/prototype-php-library MyDirectory && cd $_
```

2. Then, run the install command to complete the process. Replace `MyCompany` and `MyProject` with your own values:

```bash
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