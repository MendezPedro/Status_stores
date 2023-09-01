# Status Of Stores

This project consists of the creation of an application to monitor the status of the stores with their respective devices and servers. to see if they are working

## Table of Contents
* [Ruby, Rails, and Redis Version](#ruby-rails-and-redis-version)
* [Basic Usage](#basic-usage)
* [Ruby and Rails Gems](#ruby-and-rails-gems)



## Ruby, Rails and Redis Version

* Ruby ~> '3.0.2'
* Rails ~> '7.0.7.2'
* Redis-server ~> '6.0.16'

## Basic Usage

```ruby
1.- bundle
2.- rails db:seed
3.- rails s
4.- bundle exec sidekiq
```

Go to port 
```ruby
http://localhost:3000/
```

Push the "inicio" button to start the jobs that update the data every 30 seconds

To monitor tasks go to 
```ruby
http://localhost:3000/sidekiq/
```

## Ruby and Rails Gems

```ruby
gem "sidekiq", "~> 6.2"
gem "bootstrap", "~> 5.2.0"
gem "sassc-rails"
gem "jquery-rails"
```

