
class Application 
  def call(env)
     return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
  end
  def pretty_response
    if (Time.now.to_i) < 12 
      resp.write "Good Morning!" 
    else 
      resp.write "Good Afternoon!"
    end 
  end
end 


