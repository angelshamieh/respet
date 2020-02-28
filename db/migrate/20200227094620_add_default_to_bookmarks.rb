class AddDefaultToBookmarks < ActiveRecord::Migration[5.2]
  def change
    change_column :bookmarks, :mark, :boolean, default: false
  end
end
