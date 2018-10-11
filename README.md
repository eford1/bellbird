# README

## How to run locally 

1. Make sure you are in the `bellbird` directory
2. Start redis: `redis-server /usr/local/etc/redis.conf`
3. Start sidekiq: `bundle exec sidekiq`
4. Start rails server: `bin/rails server`

## How to run tests
`bundle exec rspec`
