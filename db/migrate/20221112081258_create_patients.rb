class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :national_id
      t.string :image
      t.string :telephone
      t.string :gender

      t.timestamps
    end
  end
end
