class Beach < ApplicationRecord
  has_many :favs, dependent: :destroy
  has_many :users, through: :favs

  scope :humboldt, -> { where(county: "Humboldt") }
  scope :mendosino, -> { where(county: "Mendocino") }
  scope :sonoma, -> { where(county: "Sonoma") }
  scope :marin, -> { where(county: "Marin") }
  scope :sanfrancisco, -> { where(county: "San Francisco") }
  scope :sanmateo, -> { where(county: "San Mateo") }
  scope :santacruz, -> { where(county: "Santa Cruz") }
  scope :monterey, -> { where(county: "Monterey") }
  scope :sanluis, -> { where(county: "San Luis Obispo") }
  scope :santabarbara, -> { where(county: "Santa Barbara") }
  scope :ventura, -> { where(county: "Ventura") }
  scope :losangeles, -> { where(county: "Los Angeles") }
  scope :orange, -> { where(county: "Orange") }
  scope :sandiego, -> { where(county: "San Diego") }

  validates_presence_of :name
  validates_presence_of :location
  validates_presence_of :county
end
