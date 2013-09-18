Amazon Connect Demo
===========
What is Amazon Connect Demo?
----------------
Amazon Connect Demo is a sample web application in order to learn the 

App Dependencies
----------------

```
Database = PostgreSQL
Rails version =  3.2.13
```

Installation
---------------

```
$ git clone https://github.com/horozco/amazon_login_demo
$ cd amazon_login_demo #(You need to accept the .rvmrc configuration file.)
$ bundle
$ rake db:create
$ rake db:migrate
$ thin start --ssl
```
