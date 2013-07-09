# my_middleware_day11.rb
module MyMiddleware
  class Hello
    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] != '/'
        [200, {"Content-Type" => "text/plain"}, ["Not OK!"]]
      else
        # forward the request
        @app.call(env)
      end
    end
  end
end