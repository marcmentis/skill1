class StaticPagesController < ApplicationController
  def home
  	# Get 'request' and 'response' objects from Authentication system
  	@request = request

    session[:facility] = "0013"  # Hack as "Skill" repo doesn't contain User table nor set session variables properly
    
  
  # Raise exception if browser not chrome
  begin
    raise RuntimeError unless @request.headers["HTTP_USER_AGENT"].downcase.include? "chrome"
    rescue RuntimeError
      render file: "#{Rails.root}/public/browser_error", layout: false
  end
    

    
  end
end
