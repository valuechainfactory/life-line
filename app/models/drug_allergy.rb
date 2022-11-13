# frozen_string_literal: true

class DrugAllergy < ApplicationRecord
  belongs_to :patient
end
