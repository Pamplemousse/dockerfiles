require 'rubygems'
require 'geminabox'

Geminabox.data = './data'

use Rack::Auth::Basic, 'GemInAbox' do |username, password|
  username == ENV['USERNAME'] &&
    password == ENV['PASSWORD']
end

run Geminabox::Server
