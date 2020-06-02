class Ad < ApplicationRecord
  extend Enumerize
  enumerize :state, in: {:draft => 1, :new => 2, :rejected => 3, :approved => 4, :published => 5, :archival => 6 }

  belongs_to :subcategory
  belongs_to :user

  has_one_attached :main_image
  has_one_attached :image_1
  has_one_attached :image_2
  has_one_attached :image_3
  has_one_attached :image_4
  has_one_attached :image_5

  scope :approved, -> { where(state: 4) }
  scope :published, -> { where(state: 5) }
  scope :not_draft, -> { where.not(state: 1) }

  validates :name, presence: true

  state_machine initial: :draft do
    state :draft
    state :new
    state :rejected
    state :approved
    state :published
    state :archival

    event :send_to_moderator do
      transition draft: :new
    end

    event :to_ban do
      transition new: :rejected
    end

    event :to_approve do
      transition new: :approved
    end

    event :publish do
      transition approved: :published
    end

    event :to_archive do
      transition published: :archival
    end

    event :from_rejected_to_draft do
      transition rejected: :draft
    end

    event :to_draft do
      transition archival: :draft
    end
  end
end
