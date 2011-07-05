class ApplicationController < ActionController::Base
  protect_from_forgery  
    require "#{RAILS_ROOT}/config/config.rb" 
 
    private
 
  def authenticate
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == 'somnie' && password == 'somnie'
    end
  end
end
