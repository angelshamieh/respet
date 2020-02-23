class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.references :animal_type, foreign_key: true
      t.references :animal_status, foreign_key: true
      t.string :title
      t.string :breed
      t.string :location
      t.integer :age
      t.string :gender
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
