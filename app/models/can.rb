class Can < ApplicationRecord
  belongs_to :brewery
  belongs_to :hop
  validates :name, presence: true
  validates :abv, presence: true
  has_one_attached :photo
end
