<h1 align="center">
README
  
:construction: Project in progress :construction:
</h1>


<h3 align="left">
:pencil2: Requirements :pencil2:
</h3>

* Ruby version: 3.1.2
* Rails: 7

This project is with the aim of practice about the questions at [TOP - ActiveRecord lesson's quiz](https://www.theodinproject.com/lessons/ruby-on-rails-micro-reddit)








<img width="345" alt="image" src="https://user-images.githubusercontent.com/26731448/214150248-c44d82f0-83e5-4b66-b161-ae0e9f903ab6.png">

<h2 align="left">
branch: warming-up-02
</h2>

You are building the profile tab for a new user on your site. You are already storing your user’s username and email, but now you want to collect demographic information like city, state, country, age, and gender. Think – how many profiles should a user have? How would you relate this to the User model?

<h3 align="left">
proposal
</h3>

Gender, City, State, and Country should be entities to control the data at DB.
Age, should be a computed value, with a birthdate field at Profile entity, a method on the model.
User should be an entity with session credentials and should be related to one profile (1:1)

<img width="487" alt="image" src="https://user-images.githubusercontent.com/26731448/214666484-06fb6823-9fe9-4db1-95d7-19eee9c49edd.png">

<h3 align="left">
how to use
</h3>

In order to try the solution:

install dependencies:
`bundle install`

create database:
`rails db:create`

run migrations
`rails db:migrate`

run seeds:
`rails db:seed`

try ActiveRecord queries on console, to start console:
`rails c`
