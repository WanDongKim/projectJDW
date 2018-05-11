class Event < ApplicationRecord
  belongs_to :host

  validates :size, presence: true
  # has_many :party_users, through: :user_roles, source: :user
end
