class Application

  def call(env)
    resp = Rack::Response.new

    env[:timestamp] = Time.now
    resp.write "#{Time.now}"

    if time
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end

# module Middleware
#   class Timestamp
#     def initialize(app)
#       @app = app
#     end
#
#     def call(env)
#       env[:timestamp] = Time.now
#       @app.call(env)
#     end
#   end
# end
