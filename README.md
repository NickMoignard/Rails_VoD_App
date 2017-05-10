# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Versions
    ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-darwin16]
    Rails 5.1.0
* Gems Used
    devise
        handles authorisation for the application
    simple form
        generates html forms
    paperclip
        Attachment manager. Handles file uploads.
    bootstrap-sass
        styling
    sidekiq
        background video processing
    sidetiq
        reoccuring jobs manager for sidekiq
    pubnub
        application notifications
    sinatra
        sideqik optional front-end
    pry

    pry-rails


* Database creation
    $ rails g devise user
    $ rails g model Video name:string video_file:attachment mp4_file:attachment webm_file:attachment ogg_file:attachment thumbnail:attachment published:boolean likes:integer user:references

* System dependencies
    installing all the gems will take some amount of trouble shooting.
    with a new version of rails some gems version requirements may not be updated
        
    as of 10/5/2017
    gem 'devise'
        doesn't work with rails 5.1 download from here git: 'https://github.com/plataformatec/devise.git'
    gem 'simple_form'
        doesn't work with rails 5.1 download from here git:, github: 'elsurudo/simple_form', branch: 'rails-5.1.0'

* Configuration
    
* Database initialization
    rails db:migrate

* How to run the test suite
    bundle exec rspec

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions 
    $ bundle install
    $ rails g simple_form:install --bootstrap
    $ rails g devise:install
    $ rails g devise:views

* ...
