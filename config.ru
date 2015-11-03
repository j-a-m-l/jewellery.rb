require 'rubygems'
require 'geminabox'

Geminabox.data = '/geminabox/'
Geminabox.rubygems_proxy = true
Geminabox.allow_remote_failure = true

run Geminabox::Server
