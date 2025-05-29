# Deploying a web app on Elastic Bean Stalk
## Tools
### Elastic Bean Stalk
### Docker
### Ruby
###

## Installing rails
```sh
gem install rails
```
## Provisioning a rails app
```sh
rails new sample -A -J -T -d postgresql
```
## Set up postgress in docker
```sh
docker-compose.yml
docker compose up
```
## Change the username and password 
./config/database.yml
## install bundle packages
```sh
bundle install
```
## Start our rails app
```sh
bundle exec rails s -b 0.0.0.0
```
> Our binding to local host enables us to find connection with our local database

## Trouble shooting
```sh
config.hosts << "3000-#{ENV['GITPOD_WORKSPACE_ID']}.#{ENV['GITPOD_WORKSPACE_CLUSTER_HOST']}" 
```
> The code above gives rails the permission to access port 3000
![Alt text](/output-images/ebs-error.png?raw=true "The error due to us not giving rails access to port 3000")

## We now have an error since we don't have a table
![Alt text](/output-images/ebs-error2.png?raw=true "The error due to us not having a table on our DB")
```sh
rails generate migration create_tables
```
Creates a table
We made changes to the following files:
1./db/migrate/20250529101510_create_tables.rb
2./app/models/thing.rb
3./config/database.yml

## Creating our own database
```sh
bundle exec rails db:create
```
![Alt text](/output-images/ebs-success.png?raw=true "Our DB is up!!!")

## Migrate DB to create tables
```sh
bundles exec rails db:migrate
```
![Alt text](/output-images/table.png?raw=true "Tables have been created!!!")

## Confirm if our table are visible
```sh
rails c

```
![Alt text](/output-images/railsztable.png?raw=true "Tables have been created!!!")

## Updating the routes to direct to our app
> /config/routes.rb Change to "application#home"
> Add def home function to /app/controllers/application_controller.rb
> Under /app/views/, make /application/home.html.erb

## The code in div iterates through the DB
home.html.erb

## On our browser on port 3000
![Alt text](/output-images/app-output.png?raw=true "DB points to our website!!!")
