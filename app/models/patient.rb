class Patient < ApplicationRecord
  validates :first_name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :last_name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :national_id, presence: true, numericality: { only_integer: true }
  validates :image, presence: true
  validates :telephone, presence: true
  validates :gender, presence: true
end
