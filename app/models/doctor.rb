class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :patients, dependent: :destroy

  # def self.percentage_of_conditions
  #   @patients_id = Patient.where(doctor_id: Doctor.find_)
  #   @diabetes = [];
  #   @hypertension = [];
  #   @asthma = [];
  #   @patients_id.map do |patient_id|
  #     @conditions = PatientCondition.joins(:pre_existing_condition,:patient).where(patient_id: @patient_id).pluck(:diabetes,:hypertension,:asthma)
  #     @conditions.map do |condition|
  #       if condition[0] == true
  #         @diabetes.push(condition[0])
  #       elsif condition[1] == true
  #         @hypertension.push(condition[1])
  #       elsif condition[2] == true
  #         @asthma.push(condition[2])
  #       end
  #     end
  #   end
  #   @diabetes_percentage = (@diabetes.count(true).to_f / @diabetes.count.to_f) * 100
  #   @hypertension_percentage = (@hypertension.count(true).to_f / @hypertension.count.to_f) * 100
  #   @asthma_percentage = (@asthma.count(true).to_f / @asthma.count.to_f) * 100
#end

end
