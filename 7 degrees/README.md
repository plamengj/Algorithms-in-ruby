## Video
https://youtu.be/8RA6lYEi3s8

## How to Deploy
```bash
touch Gemfile
```

then add this to the Gemfile

```
  source "https://rubygems.org"

  gem "rspec"
  gem "pry"
```

then run the following commands

```bash
bundle install --binstubs
bin/rspec --init
```

Now move all ruby files to the spec folder. Now that we have every ruby file in the spec folder we can edit find_kevin_bacon_spec.rb
& spec_helper. 
We remove the "../" on the top of the files so that the "require" is pointed correctly.

## Run tests
```bash
bundle exec rspec
```