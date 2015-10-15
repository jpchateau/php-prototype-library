# prototype-php-library

[![Build Status](https://travis-ci.org/jpchateau/prototype-php-library.svg?branch=master)](https://travis-ci.org/jpchateau/prototype-php-library)

*A PHP library prototype*

Features
========

The aim of this prototype is to save time when starting to develop a new PHP library.
It will:
* Download and install basic files - a class, a test class, a phpunit and a travis file
* Replace the genuine namespace with the data you provided
* Generate a basic README file


Usage
=======

Fill the vendor and app variables with your own values, then run:

```shell
$ VENDOR=company_name;APP=library_name
$ composer create-project jpchateau/prototype-php-library $APP && cd $APP
$ find . -type f -exec sed -i "s/Foo/$VENDOR/g" {} \; -exec sed -i "s/Bar/$APP/g" {} \;
$ composer dump-autoload
$ echo -e "# $APP\n\n*A PHP Library*" > README.md
```

Do not forget to pick up a license and start working on your new PHP library right now!

Tests
=====

```shell
$ ./vendor/bin/phpunit
```
