class CreateNextOfKins < ActiveRecord::Migration[7.0]
  def change
    create_table :next_of_kins do |t|
      t.string :first_name
      t.string :second_name
      t.string :phone_number

      t.timestamps
    end
  end
end
