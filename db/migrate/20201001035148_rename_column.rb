class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :cotent, :content
  end
end
