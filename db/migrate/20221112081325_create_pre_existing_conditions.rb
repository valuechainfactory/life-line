class CreatePreExistingConditions < ActiveRecord::Migration[7.0]
  def change
    create_table :pre_existing_conditions do |t|
      t.boolean :diabetes , default: false
      t.boolean :hypertension , default: false
      t.boolean :asthma , default: false

      t.timestamps
    end
  end
end
