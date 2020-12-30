class AddGenderToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :gender, :boolean
    add_column :users, :gender, :integer
  end
end
