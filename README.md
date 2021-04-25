# VSA Member Tracker Application

URL: vsatracker.herokuapp.com

### All the latest code is in the "master branch"

## Running the app locally on your computer
### 1. First create the database locally using db:create
### 2. rails db:migrate 
### 3. Change the username and passowrd in config/database.yml
### 4. rails s

## Deploy the code in Heroku
### 1. First through the CI/CD process, if anything is merged into master the app will be deployed in Heroku. 

## CI/CD Process
### 1. The CI/CD code is in .github/workflows/main.yml
### 2. The "test" portion runs all the rspec tests
### 3. The "build" portion deploys to Heroku

