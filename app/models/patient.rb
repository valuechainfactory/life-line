class Patient < ApplicationRecord
  has_many :drug_allergies
  has_many :food_allergies
  has_many :pre_existing_conditions
  belongs_to :doctor
end
