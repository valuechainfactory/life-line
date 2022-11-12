class CreateConditionsDrugs < ActiveRecord::Migration[7.0]
  def change
    create_table :conditions_drugs do |t|
      t.references :pre_existing_condition, null: false, foreign_key: true
      t.references :drug_allergy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
