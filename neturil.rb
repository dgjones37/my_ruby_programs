# neturi1.rb
require 'net/http'
uri = URI('http://rubylearning.com/data/text.txt')
res = Net::HTTP.get_response(uri)  #performs a get request & returns a response obj
puts res.code # => '200'
puts res.message # => 'OK'

puts Net::HTTP.get(uri) # => String