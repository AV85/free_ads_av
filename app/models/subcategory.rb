class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :ads, dependent: :destroy
  validates :name, presence: true
end
