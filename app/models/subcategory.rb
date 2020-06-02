class Subcategory < ApplicationRecord
  extend Enumerize
  enumerize :state, in: {:draft => 1, :published => 2 }

  belongs_to :category
  has_many :ads, dependent: :destroy
  validates :name, presence: true

  state_machine initial: :draft do
    state :draft
    state :published

    event :to_publish do
      transition draft: :published
    end

    event :to_draft do
      transition published: :draft
    end
  end
end
