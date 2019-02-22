## Video
https://youtu.be/-dP1_SMEaCU

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

Now move the cocktail_sort.rb and the cocktail_sort_spec.rb files to the spec folder.

## Run tests
```bash
bundle exec rspec
```