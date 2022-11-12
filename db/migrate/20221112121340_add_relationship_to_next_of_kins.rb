class AddRelationshipToNextOfKins < ActiveRecord::Migration[7.0]
  def change
    add_column :next_of_kins, :relationship, :string
  end
end
