# prototype-php-library
A PHP library prototype


Install
=======

Replace "my-app" with the name of your application.

Replace "jpc" and "JPC" with your vendor name.

Replace "tools" and "Tools" with the name of your library.

Then run:


```shell
$ git clone git@github.com:jpchateau/prototype-php-library.git my-app
$ cd my-app
$ composer install
$ find . -type f -exec sed -i 's/my-vendor/jpc/g' {} \;
$ find . -type f -exec sed -i 's/MyVendor/JPC/g' {} \;
$ find . -type f -exec sed -i 's/my-library/tools/g' {} \;
$ find . -type f -exec sed -i 's/MyLibrary/Tools/g' {} \;
$ composer dump-autoload
```

You are ready to start coding your library.



Tests
=====

```shell
$ ./vendor/bin/phpunit
```