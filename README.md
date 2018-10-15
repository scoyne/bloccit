# Bloccit

Bloccit is a Reddit replica that allows users to sign up, create posts, comment on posts, vote on posts, favorite a post and receive and email update on their favirite potst.

### A user can

* Sign up for a free account by providing a user name, password and email
* Sign in and out of Bloccit
* View topics and posts
* Comment on posts
* Create new posts and edit posts they own
* Vote up or down posts
* Favorite a post and receive email with updates on that post
* Displays posts and comments
* Add an avatar to their profile

### Available roles
* admin or standard user
* admins can delete and create any topic or post

### Built using
* Ruby 
* Rails 
* Bootstrap
* SQLite
* PostgreSQL
* BCrypt - securing passwords
* SendGrid - email confirmation
* FactoryGirl - testing
* Figaro

### To run Bloccit
* Clone the repository
* Run 

_bundle install_

* Create and migrate the database

_rake db:create_ 
_rake db:migrate_

* Start server

_rails s_

Run app in your favorite web browser type in the address list

_127.0.0.1:3000_
