class Patient < ApplicationRecord
  validates :first_name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :last_name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :national_id, presence: true, numericality: { only_integer: true }
  validates :image, presence: true
  validates :telephone, presence: true
  validates :gender, presence: true

  has_many :pre_existing_conditions, through: :patient_conditions, foreign_key: :patient_id, dependent: :destroy
  has_many :patient_conditions, foreign_key: :patient_id, dependent: :destroy
  belongs_to :doctor, optional: true
end
