class Customer < ApplicationRecord
  has_one_attached :image

  validates :full_name, :phone_number, presence: true
  validates :full_name, length: { minimum: 6 }
end
