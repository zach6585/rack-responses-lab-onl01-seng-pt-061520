
class Application 
  def call(env)
    resp = Rack::Response.new
    if (Time.now.to_i) < 12 
      resp.write "#{Time.now}"
      resp.write "Good Morning!" 
    else 
      resp.write "#{Time.now}"
      # resp.write "Good Afternoon!"
    end 
    resp.finish
  end
end 


