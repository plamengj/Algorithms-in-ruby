## video link
https://youtu.be/PxMj4CbQDIA

## How to Deploy
Create a Gemfile by running the following command in the bash terminal
```
touch Gemfile
```

then add the source for the ruby gems and the gems themselves to the Gemfile

```
source "https://rubygems.org"

gem "rspec"
gem "pry"
```

then run the following commands in the bash terminal.

```
bundle install --binstubs
bin/rspec --init
```

then move the flash_sort.rb and the flash_sort_spec.rb files to the spec folder.

## Run tests
Run the following command in the bash terminal
```
bundle exec rspec
```