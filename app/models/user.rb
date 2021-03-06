class User < ApplicationRecord
  extend Enumerize
  enumerize :role, in: {:user => 1, :moderator =>2, :admin => 3}
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :trackable,
         :lockable

  has_one_attached :avatar, dependent: :destroy
  has_many :ads

  def admin?
    role == 3
  end
end
