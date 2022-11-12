class AddDoctorIdToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :doctor_id, :string
  end
end
