class RemoveTextFromBookmark < ActiveRecord::Migration[7.0]
  def change
    remove_column(:bookmarks, :text)
  end
end
