# JUST DO IT

A Shia Labeouf inspired to do list made with Ruby on Rails and Minitest for testing. 

## Getting Started

download or clone the project to your computer.  


First Run docker-compose build,
docker-compose run --rm api rails db:create,
docker-compose run --rm api rails db:migrate,
docker-compose run --rm api rails db:seed,
docker-compose up

### Prerequisites

Docker :)

## Running the tests

docker-compose run -e "RAILS_ENV=test" --rm app rails test

## Built With

* [Ruby on Rails](http://rubyonrails.org/) - The web framework used
* [Docker](https://docs.docker.com/docker-for-mac/install/) - Dependency Management
* [sugar n spice]

## Author

**Blake Pfaff** 
