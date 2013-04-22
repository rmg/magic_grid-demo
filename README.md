# Demo Site for magic_grid

 * Demo: http://magic-grid.herokuapp.com
 * Source: https://github.com/rmg/magic_grid
 * Gem: http://rubygems.org/gems/magic_grid

## Development

**Pull requests welcome!**

To get up and running locally:

 1. `bundle install`
 2. `cp env.example .env`
 3. `cp db/config.yml.example db/config.yml`
 4. `$EDITOR db/config.yml`
 5. `foreman start`

### Dependencies

If you want to use `sqlite` for development go ahead, just make sure you add it to the `development` group
in the `Gemfile` instead of the root.

If you're on a Mac, I highly recommend looking at http://postgresapp.com/ for a ridiculously easy to use development
server for Postgres.

This app is deployed to Heroku using their free tier, so try to keep the dependencies as minimal as possible.
I'm looking at you, CoffeeScript and LESS..

## Copyright

&copy; 2013 Ryan Graham

Permission to use this software is granted under the terms of the MIT license.
