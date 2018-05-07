class Event < ApplicationRecord
  belongs_to :host

  # has_many :party_users, through: :user_roles, source: :user
end
