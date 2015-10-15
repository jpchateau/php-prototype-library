# prototype-php-library

[![Build Status](https://travis-ci.org/jpchateau/prototype-php-library.svg?branch=master)](https://travis-ci.org/jpchateau/prototype-php-library)

*A PHP library prototype*


Install
=======

Fill the vendor and app variables with your own values, then run:

```shell
$ VENDOR=company_name;APP=library_name
$ git clone git@github.com:jpchateau/prototype-php-library.git my-app && cd my-app
$ find . -type f -exec sed -i "s/Foo/$VENDOR/g" {} \; -exec sed -i "s/Bar/$APP/g" {} \;
$ echo -e "# $APP\n\n*A PHP Library*" > README.md
$ composer install
```

Do not forget to pick up a license and start working on your new PHP library!


Tests
=====

```shell
$ ./vendor/bin/phpunit
```