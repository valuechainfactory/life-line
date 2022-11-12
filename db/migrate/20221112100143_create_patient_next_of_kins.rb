class CreatePatientNextOfKins < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_next_of_kins do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :next_of_kin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
