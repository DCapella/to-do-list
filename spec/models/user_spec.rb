require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(email: 'admin@admin.com', password: 'adminpassword', password_confirmation: 'adminpassword') }

  describe "attributes" do
    it "has a email attribute" do
      expect(user).to have_attributes(email: 'admin@admin.com')
    end
  end
end
