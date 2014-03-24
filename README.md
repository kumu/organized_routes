# OrganizedRoutes

Tired of huge `routes.rb` files in your Rails apps? Then read on!

## Overview

The `organized_routes` gem allows you to break your routes up into logical
groups, organized in separate files.

Step 1) Add the library to your app

```ruby
# Gemfile
gem "organized_routes", "~> 1.0.0"
```

Step 2) Define your routes under the `config/routes` directory

```ruby
# config/routes/api.rb
OrganizedRoutes.define(:api) do
  namespace :api do
    resources :users
  end
end
```

Step 3) Include your routes by name in `routes.rb`

```ruby
# config/routes/api.rb
Example::Application.routes.draw do
  organize_routes
  routes_for :api
end
```

That's all there is to it! Make sure to restart your app after any route changes.

Note: If anyone has suggestions for ways to avoid the `organize_routes` call
I'm all ears.
