class ApplicationController < ActionController::Base
  protect_from_forgery  
    
    $site_name = "Wildfire Herbalism"
    $site_desc = "Herbalism is a traditional medicinal or folk medicine practice based on the use of plants and plant extracts."
    $site_copyright = "Copyright 2011 - Made by Somnie"
    
    private
 
  def authenticate
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == 'somnie' && password == 'somnie'
    end
  end
end
