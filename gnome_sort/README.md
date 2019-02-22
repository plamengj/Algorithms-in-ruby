## Video
https://youtu.be/JvIyAV7GosE

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

Now move the gnome_sort.rb and the gnome_sort_spec.rb files to the spec folder.

## Run tests
```bash
bundle exec rspec
```