class RemoveMarkColumnFromBookmarks < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookmarks, :mark
  end
end
