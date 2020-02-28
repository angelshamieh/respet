class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.references :user, foreign_key: true
      t.references :animal, foreign_key: true
      t.boolean :mark

      t.timestamps
    end
  end
end
