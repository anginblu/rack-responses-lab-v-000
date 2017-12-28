class Application

  def call(env)
    resp = Rack::Response.new

#    resp.write "#{Time.now}"

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
