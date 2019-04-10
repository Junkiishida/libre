class Basket < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :position, presence: true
  has_many :evaluations, dependent: :destroy
end
