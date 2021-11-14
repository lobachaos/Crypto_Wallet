# README

* Ruby version: 3.0.0

* System dependencies:
  * RVM https://rvm.io/
  * Rails
  ```
  gem install rails
  ```
  * Bundler
   ```
   gem install bundler
    ```
  * NodeJS
  * Yarn
  ```
  npram install --global yarn
  ```
  Postgres 14
  
  ```
  sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add - 
  sudo apt-get update
  sudo apt-get -y install postgresql 
 
  sudo apt install postgresql-contrib libpq-dev
  ```
 
  * Configuration

 * Database creation
   * Rails Tasks :

   ```
   rails dev:setup

   ```

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

