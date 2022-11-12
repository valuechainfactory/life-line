class CreatePatientConditions < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_conditions do |t|
      t.references :pre_existing_condition, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
