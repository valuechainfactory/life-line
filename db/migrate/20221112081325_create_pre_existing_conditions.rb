class CreatePreExistingConditions < ActiveRecord::Migration[7.0]
  def change
    create_table :pre_existing_conditions do |t|
      t.boolean :diabetes
      t.boolean :hypertension
      t.boolean :asthma

      t.timestamps
    end
  end
end
