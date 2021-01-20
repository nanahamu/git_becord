class AddAllergyToRecord < ActiveRecord::Migration[5.2]
  def change
    remove_column :records, :allergy, :boolean
    add_column :records, :allergy, :integer
  end
end
