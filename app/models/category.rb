class Category < ApplicationRecord
  extend Enumerize
  enumerize :state, in: {:draft => 1, :published => 2, :archival => 3 }

  scope :draft, -> { where(state: 1) }
  scope :published, -> { where(state: 2) }
  scope :archival, -> { where(state: 3) }

  has_one_attached :icon, dependent: :destroy
  has_many :subcategories

  state_machine initial: :draft do
    state :draft
    state :published
    state :archival

    event :to_publish do
      transition draft: :published
    end

    event :to_draft do
      transition published: :draft
    end
  end
end
