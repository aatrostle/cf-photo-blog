## Photo Blog

A simple photo blog that uses background jobs to process image uploads and store them in Amazon S3.

#### Setup

* `git clone`
* `bundle install`
* `mv config/application.yml.example config/application.yml`
* put your credentials into the application.yml file for figaro
* install redis, start up redis
* start resque with `rake resque:work QUEUE='*'`
* `rails s`

**that should do it!**

[View the working app](https://afternoon-basin-8898.herokuapp.com/)
