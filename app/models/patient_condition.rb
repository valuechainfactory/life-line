class PatientCondition < ApplicationRecord
    validates :patient_id, presence: true, numericality: { only_integer: true }
    validates :pre_existing_condition_id, presence: true, numericality: { only_integer: true }

    belongs_to :patient, optional: true
    belongs_to :pre_existing_condition, optional: true
end
