class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :user_id
      t.string :food
      t.date :date
      t.boolean :allergy
      t.timestamps
    end
  end
end
