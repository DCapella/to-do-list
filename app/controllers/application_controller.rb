class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  ### Comment out for now because of command line interference
  # before_action :authenticate_user!
end
