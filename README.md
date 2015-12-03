# jewellery.rb

This project install [Gem in a Box](http://tomlea.co.uk/posts/gem-in-a-box/) inside a Docker container.

## Usage

```
# Create the container:
docker run --name jewellery -p 9292:9292 -v <host_path>:/geminabox -d jaml/jewellery.rb

# Now, you would be able to see the GUI:
localhost:9292

# Replace the default source (RubyGems.org) with your cool new one:
gem sources --add http://localhost:9292
gem sources --remove https://rubygems.org/
gem sources --list

# Test it with any gem that it is not in your computer
gem install <lol_gem>

# For using the new source with Bundler, replace the RubyGems.org with in your project Gemfile:
source 'https://rubygems.org'
source 'http://localhost:9292'
```

## Tips

For using a local gem repository with other containers, add an entry to the [`extra_hosts`](https://docs.docker.com/compose/compose-file/#extra-hosts) option in your `docker-compose.yml`. Then configure your `Gemfile` to its URL:
```
source 'http://jewellery:9292'
```

## Repository

The main repository is: https://github.com/j-a-m-l/jewellery.rb

## Authors

Juan A. Martín Lucas (https://github.com/j-a-m-l)

## License

This project is licensed under the MIT license. See [LICENSE](https://github.com/j-a-m-l/jewellery.rb/blob/master/LICENSE) for details.
