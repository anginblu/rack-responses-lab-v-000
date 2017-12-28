class Application

  def call(env)
    resp = Rack::Response.new

    time = env['rack.timestamp']

    resp.write "#{time}"

    if time
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end

module Middleware
  class Timestamp
    def initialize(app)
      @app = app
    end

    def call(env)
      env[:timestamp] = Time.now
      @app.call(env)
    end
  end
end
