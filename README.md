# README

Application Setup 
 
Install Ruby Version: 2.5.1
If you use RVM: 
```bash
 $ rvm install ruby-2.5.1
```
Switch to ruby version 2.5.1

Install postgresql: (if you haven't) 
```console
  $ sudo apt update
  $ sudo apt install postgresql postgresql-contrib
  $ sudo -u postgres psql
```
Setup postgresql and create admin user that matches your username
```console
  $ sudo -i -u postgres
  $ sudo -u postgres createuser --interactive
```
Install the gems:
```console
  $ bundle install 
```
Create and migrate the database
```console
  $ rails db:create 
  $ rails db:migrate
  $ rails db:seed
```
Run the server
```console
  $ rails s  
```
# website
