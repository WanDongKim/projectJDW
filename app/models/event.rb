class Event < ApplicationRecord
  belongs_to :host
  has_many :reservations
  mount_uploader :picture, PictureUploader

  validates :size, presence: true
  # has_many :party_users, through: :user_roles, source: :user
end
