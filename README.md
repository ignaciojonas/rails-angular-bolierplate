# rails-angular-bolierplate
Boilerplate to start an application using Ruby on Rails and Angular JS

#Steps to reproduce this Boilerplate.

## Generate Rails App

Execute
```rails new rails-angular-boilerplate --skip-bundle --quiet --database=postgresql```

## Add Gems

Add to the Gemfile
```ruby
## Bower components
source 'https://rails-assets.org' do
  gem 'rails-assets-angular', '1.2.28'
  gem 'rails-assets-angular-ui-router', '0.2.13'
  gem 'rails-assets-angular-ui-bootstrap-bower', '0.10.0'
  gem 'rails-assets-bootstrap-sass-official', '3.3.0'
  gem 'rails-assets-restangular', '~> 1.5.1'
  gem 'rails-assets-lodash', '~> 3.6'
  gem 'rails-assets-jquery', '~> 2.1.1'
end
```
Update ```/app/assets/javascript/application.js``` to include Angular, bootstrap and other libraries
```ruby
...
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sass-official
//= require angular
//= require angular-ui-router
//= require angular-ui-bootstrap-bower
//= require restangular
//= require lodash
//= require_tree .
```
## Create a home page
Create a controller for the home page at ```app/controllers/home_controller``` with the following content:

```ruby
class HomeController < ApplicationController
  def index
  end
end
```

Add to ```config/routes.rb ```
```ruby
root 'home#index'
```

Create the home page html at ```app/views/home/index.html.erb```.
```html
<div class="container-fluid">
  <div class="panel panel-success">
    <div class="panel-heading">
      <h1 ng-if="name">Hello, {{name}}</h1>
    </div>
    <div class="panel-body">
      <form class="form-inline">
        <div class="form-group">
          <input class="form-control" type="text" placeholder="Enter your name" autofocus ng-model="name">
        </div>
      </form>
    </div>
  </div>
</div>

```
## Create Angular app
Add to ```/app/view/layouts/application.html.erb``` the ```ng-app="myapp"``` inside the tag ```<html>```
Create the file ```/app/assets/javascript/app.js``` with:
```
myapp = angular.module('myapp',[
])
```

## Run the app
Run ```rails s ```
Go to ```http://localhost:3000```
Type your name in the input.

![Demo](http://i.imgur.com/FVyg4ua.gif)
