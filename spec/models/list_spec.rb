require 'rails_helper'

RSpec.describe List, type: :model do
  let(:user) { User.create!(email: 'admin@admin.com', password: 'adminpassword', password_confirmation: 'adminpassword') }
  let(:list) { List.create!(title: 'New List Title', user: user) }

  describe "attributes" do
    it "has a title attribute" do
      expect(list).to have_attributes(title: 'New List Title')
    end
  end
end
