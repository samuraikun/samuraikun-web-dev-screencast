class User < ApplicationRecord
  has_many :lessons, dependent: :destroy
  has_many :favorites
  has_many :comments
  has_one :country
end
