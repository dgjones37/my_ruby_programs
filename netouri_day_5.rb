# netouri.rb
require 'open-uri'

f = open('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html')
#puts f.readlines.join
a = f.readlines.join.split.count('the')
puts a