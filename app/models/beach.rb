class Beach < ApplicationRecord
  has_many :favs, dependent: :destroy
  has_many :users, through: :favs

  validates_presence_of :name
  validates_presence_of :location
  validates_presence_of :county
end
