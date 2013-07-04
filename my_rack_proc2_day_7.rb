# my_rack_proc2.rb

require 'rack'

my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["The command line argument you typed was: #{ARGV[0]}"]] }

Rack::Handler::WEBrick.run my_rack_proc, :Port => 8500