class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validates :adult, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
end
