class DrugAllergy < ApplicationRecord
  validates :name, presence: true
  belongs_to :patient
  belongs_to :pre_existing_condition, through: :conditions_drugs
end
