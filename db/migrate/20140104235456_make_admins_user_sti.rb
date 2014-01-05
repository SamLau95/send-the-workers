class MakeAdminsUserSti < ActiveRecord::Migration
  def change
    drop_table :admins
    add_column :users, :type, :string
  end
end
