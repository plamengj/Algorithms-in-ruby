## Video
https://youtu.be/ZpQlxno4Ux0

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

Now move the ten_pin_bowling.rb and the ten_pin_bowling_spec.rb files to the spec folder.

## Run tests
```bash
bundle exec rspec
```