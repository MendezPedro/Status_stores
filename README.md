# Status Of Stores

This project consists of the creation of an application to monitor the status of the stores with their respective devices and servers. in order to know if they are operational

## Table of Contents
* [Ruby, Rails & Redis version](#rails-version)
* [Basic Usage](#basic-usage)
* [Ruby & Rails Gems](#rails-gems)


## Ruby, Rails & Redis version

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

## Ruby & Rails Gems

```ruby
gem "sidekiq", "~> 6.2"
gem "bootstrap", "~> 5.2.0"
gem "sassc-rails"
```

