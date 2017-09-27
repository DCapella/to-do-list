class List < ApplicationRecord
  belongs_to :user
  has_many :items

  validates :title, presence: true
  validates :private, presence: true
end
