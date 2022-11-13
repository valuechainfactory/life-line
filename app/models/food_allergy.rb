# frozen_string_literal: true

class FoodAllergy < ApplicationRecord
  belongs_to :patient
end
