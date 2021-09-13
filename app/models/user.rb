class User < ApplicationRecord
  has_secure_password
  has_many :favs, dependent: :destroy
  has_many :beaches, through: :favs

  validates_presence_of :email
  validates_uniqueness_of :email
end
