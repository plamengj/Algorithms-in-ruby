## Video
https://youtu.be/BA4-U_UXRLg

## How to Deploy

Add this to the top of the spec file
```
include RSpec
require_relative 'dijkstra'
```

Then run this in the command line

```bash
touch Gemfile
```

then add this to the Gemfile

```
  source "https://rubygems.org"

  gem "rspec"
  
```

then run the following commands

```bash
bundle install --binstubs
bin/rspec --init
```

Now move the dijkstra.rb and the dijkstra_spec.rb files to the spec folder.

## Run tests
```bash
bundle exec rspec
```