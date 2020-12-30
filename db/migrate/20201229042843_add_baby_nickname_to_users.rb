class AddBabyNicknameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :baby_nickname, :string
  end
end
