class Hop < ApplicationRecord
  belongs_to :can, optional: true
  validates :name, presence: true
end
