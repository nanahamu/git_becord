class AddInformationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birthday, :date
    add_column :users, :gender, :boolean
    add_column :users, :image, :string
  end
end
