class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  private
  def authenticated?
    authenticate_or_request_with_http_basic do |username,password|
      # Have to make sure user exists first before validating password because
      # of devise gem.
      if User.where( email: username ).present?
        user = User.find_by_email(username)
        user.valid_password?(password)
      end
    end
  end

  def user_find
    authenticate_or_request_with_http_basic do |email|
      user = User.find_by_email(email)
    end
  end

  def list_find
    authenticate_or_request_with_http_basic do |email|
      user = User.find_by_email(email)
      list = user.lists.first
    end
  end
end
