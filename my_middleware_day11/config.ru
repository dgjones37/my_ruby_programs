require './my_middleware_day11'
use MyMiddleware::Hello # this comes in between
run Proc.new{|env| [200, {"Content-Type" => "text/plain"}, ['OK!']] }