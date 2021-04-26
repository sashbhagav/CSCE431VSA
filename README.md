# VSA Member Tracker Application

URL: https://vsatracker.herokuapp.com


## All the latest code is in the "master branch"

## Running the app locally on your computer
### 1. First create the database locally using db:create
### 2. rails db:migrate 
### 3. Change the username and password in config/database.yml
### 4. Run Bundle Install
### 5. rails s

## Deploy the code in Heroku
### 1. First through the CI/CD process, if anything is merged into master the app will be deployed in Heroku. 

## Manual Deployment of Code in Heroku
### 1. heroku git:remote -a "app"
### 2. heroku login
### 3. git init
### 4. git add .
### 5. git commit -m "message"
### 6. git push heroku master
### 7. heroku run rake db:migrate

## CI/CD Process
### 1. The CI/CD code is in .github/workflows/main.yml
### 2. The "test" portion runs all the rspec tests
### 3. The "build" portion deploys to Heroku

