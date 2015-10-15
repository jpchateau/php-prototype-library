# prototype-php-library
A PHP library prototype


Install
=======

Fill the vendor and app variables with your own values, then run:

```shell
$ VENDOR=company_name;APP=library_name
$ git clone git@github.com:jpchateau/prototype-php-library.git my-app && cd my-app
$ find . -type f -exec sed -i "s/Foo/$VENDOR/g" {} \; -exec sed -i "s/Bar/$APP/g" {} \;
$ echo -e "# $APP\nA PHP Library" > README.md
$ composer install
```

You are ready to start coding your library.


Tests
=====

```shell
$ ./vendor/bin/phpunit
```