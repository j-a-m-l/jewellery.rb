# jewellery.rb

## Usage
```
# Build the image:
docker build --tag jewellery .

# Create the container:
docker run --name jewellery -p 9292:9292 -v <host_path>:/geminabox -d jewellery

# Now, you would be able to see [Gem in a Box](http://tomlea.co.uk/posts/gem-in-a-box/) GUI:
localhost:9292

# Replace the default source (RubyGems.org) with your cool new one:
gem sources --add http://localhost:9292
gem sources --remove https://rubygems.org/
gem sources --list

# Test it with any gem that it is not in your computer
gem install <lol_gem>
``

## Authors

Juan A. Martín Lucas (https://github.com/j-a-m-l)

## License
This project is licensed under the MIT license. See [LICENSE]() for details.
