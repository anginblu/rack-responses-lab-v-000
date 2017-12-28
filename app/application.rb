class Application

  def call(env)
    resp = Rack::Response.new

    time = Rack::RequestTime.current

    resp.write "#{time}"

    if time
      resp.write "Good Morning!"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
