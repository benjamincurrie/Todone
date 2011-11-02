ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all
  
  def log_in(user)
    @request.session[:user_id] = user ? users(user).id : nil
  end
end
