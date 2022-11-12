class CreateDrugAllergies < ActiveRecord::Migration[7.0]
  def change
    create_table :drug_allergies do |t|
      t.string :name

      t.timestamps
    end
  end
end
