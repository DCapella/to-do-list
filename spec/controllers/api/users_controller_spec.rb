require 'rails_helper'

# RSpec.describe WelcomeController, type: :controller do
RSpec.describe Api::UsersController, type: :controller do
  describe "user requests" do
    it "returns a list of users" do
      User.create!(email: 'admin@admin.com', password: 'adminpassword', password_confirmation: 'adminpassword')
      get 'http://localhost:3000/api/users/', format: 'json'
      result = JSON.load(response.body)
      expect(result.first['email']).to eq 'admin@admin.com'
    end
  end
end
