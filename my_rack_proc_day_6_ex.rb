# my_rack_proc_day_6_ex.rb

arg = ARGV
#puts arg.size
arg = arg.join(' ')
#puts arg
my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{arg}"]] }

puts my_rack_proc.call({})