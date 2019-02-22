## Video
https://youtu.be/hQ38l4vn5zo

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

Now move the comb_sort.rb and the comb_sort_spec.rb files to the spec folder.

## Run tests
```bash
bundle exec rspec
```