class AddEditTouser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :position, :string
    add_column :users, :s_introduction, :text
  end
end
