# README

## Note App

This application is to create a personal notes. Only the logged in user will be able to perform the List, Create, Update and Destroy operation for notes.


## Local Setup

1. Install [RVM](https://rvm.io/rvm/install)
2.  Install ruby 2.7.5 using rvm
 ```
  rvm install 2.7.5
```
3. Clone this repository
4. Inside the project folder Install bundler
```
  gem install bundler
```
4. Install gems with bundler
```
  bundle install
```
5. Install postgresql
```
brew install postgresql
```
6. create and migrate database
```
  rails db:create db:migrate
```
7. Setup environment varialbles
  - Add dotenv-rails gem
  - Create ```.env``` file under root of your project.
  - Add you environment variables there.
  - Refer to file ```.env.example``` to know what sort of environment variable we need.
8. Start the server process
```
  rails server
```
9. Run Specs
```
rspec
```
10. Missing part of the application.
- Implement linter (like rubocop).
- Simplecov (to measure test coverage).
- Add CSS to make the UI better.
- Dockerize the application.
- Use of moduler test. Like use of shared example and shared context for mostly repeated tests.
