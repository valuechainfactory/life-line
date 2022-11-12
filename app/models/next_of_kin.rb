class NextOfKin < ApplicationRecord
    validates :name, presence: true
    validates :phone_number, presence: true
    validates :relationship, presence: true
    belongs_to :patient
end
