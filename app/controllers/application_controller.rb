class ApplicationController < ActionController::Base
  protect_from_forgery
 	# devise
  before_filter :authenticate_user!
  # cancan
end
