
class Application 
  def call(env)
    resp = Rack::Response.new
    if Time.now.to_s[13] == ':'
      resp.write "Good Morning!" 
    else 
      resp.write "#{Time.now.to_s[12...]}"
      # resp.write "Good Afternoon!"
    end 
    resp.finish
  end
end 


