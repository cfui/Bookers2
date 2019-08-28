class RenameUserColumnToBooks < ActiveRecord::Migration[5.2]
  def change
  	rename_column :books, :user, :user_id
  end
end
