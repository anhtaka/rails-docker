# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* memo
https://github.com/kkoji/rails-lecture
docker-compose run web rails new . --force --database=mysql
docker-compose build
docker-compose up -d   --起動
docker-compose ps
docker-compose run web bundle exec rake db:create

docker-compose stop

docker-compose run web bundle exec rails g model board name:string title:string body:text
docker-compose run web bundle exec rake db:migrate

pry-byebug
docker attach rails-docker_web_1


docker-compose exec web bundle exec rake db:seed

docker-compose exec web bundle exec rails g kaminari:config
docker-compose exec web bundle exec rails g kaminari:view bootstrap4


 docker-compose run web bundle update rails
 docker-compose build

 - rspec
  docker-compose exec web bundle exec rails g rspec:model User
  docker-compose exec web bundle exec rails g rspec:controller Users
docker-compose exec web bundle exec rspec -f d ./spec/models/

  docker-compose run web rails console
 

docker-compose exec web bundle exec rails db:create
 docker-compose exec web bundle exec rails db:migrate