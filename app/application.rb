
class Application 
  def call(env)
    resp = Rack::Response.new
    if 
      resp.write "#{}"
      resp.write "Good Morning!" 
    else 
      resp.write "#{Time.now.to_s[11...13]}"
      # resp.write "Good Afternoon!"
    end 
    resp.finish
  end
end 


