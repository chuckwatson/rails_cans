class Brewery < ApplicationRecord
  has_many :cans
  validates :name, presence: true
  validates :address, presence: true
  validates :website, presence: true
end
