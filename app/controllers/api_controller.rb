class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  private
  def authenticated?
    # authenticate_or_request_with_http_basic {|email, password| User.where( email: email, password: password).present? }
    authenticate_or_request_with_http_basic do |username,password|
      if User.where( email: username ).present?
        user = User.find_by_email(username)
        user.valid_password?(password)
      end
      # resource = User.find_by_email(username)
      # # resource.valid_password?(password)
      # if resource.valid_password?(password)
      #   sign_in :user, resource
      # end
    end
  end
end
