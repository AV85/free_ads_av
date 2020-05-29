class Category < ApplicationRecord
  extend Enumerize
  enumerize :state, in: {:draft => 1, :published => 2, :archival => 3 }

  scope :draft, -> { where(state: 1) }
  scope :published, -> { where(state: 2) }
  scope :archival, -> { where(state: 3) }

  has_one_attached :icon, dependent: :destroy

  state_machine initial: :draft do
    state :draft
    state :published
    state :archival
  end
end
