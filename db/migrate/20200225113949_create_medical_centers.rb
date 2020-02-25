class CreateMedicalCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_centers do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :phone

      t.timestamps
    end
  end
end
