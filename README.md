# PHP Library Prototype [![Build Status](https://travis-ci.org/jpchateau/php-prototype-library.svg?branch=master)](https://travis-ci.org/jpchateau/php-prototype-library)

*PHP Library Prototype is a tool to quickly initiate the development of a new PHP library.*

## Features

The aim of this prototype is to save time when starting to develop a PHP library.
It will:
* Download and install basic files - a class and its test class with proper namespaces
* Install popular QA tools: phpunit, phpstan and phpcs
* Generate basic .gitignore and README files

Please note that `.gitignore` file is based upon [gitignore.io](https://www.gitignore.io/) API.

## Requirements

* PHP >= 7.3
* php-xml extension
* php-mbstring extension
* [Composer](https://getcomposer.org/download/)

Check the [PHP roadmap](https://www.php.net/supported-versions.php) to see the PHP versions supported by this library.

## Usage

Creating a library is a simple two-step process.  
1. First, create a project from this prototype. Replace `MyDirectory` with your own value to create the project and move
into the created directory:

```bash
$ composer create-project jpchateau/prototype-php-library MyDirectory && cd $_
```

2. Then, run the install command to complete the process. Replace `MyCompany` and `MyProject` with your own values:

```bash
$ make company=MyCompany project=MyProject install
```

You are ready to develop!  
Don't forget to pick up a license ;)

## Tests

```bash
$ make tests
```

## QA Tools

```bash
$ bin/phpcs src/ --standard=PSR2
$ bin/phpstan analyse -l 7 src/
```

## Troubleshooting

*Error when running `phpstan`: `SHA1 signature could not be verified`*

Try to remove `vendor` directory and run `$ composer install` before executing `phpstan` again.