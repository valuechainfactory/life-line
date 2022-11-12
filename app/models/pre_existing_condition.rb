class PreExistingCondition < ApplicationRecord
  has_many :patient_conditions, dependent: :destroy
  has_many :patients, through: :patient_conditions, dependent: :destroy
end
