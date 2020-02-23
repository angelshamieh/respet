class CreateAnimalStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
