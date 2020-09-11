class RemoveDescriptionFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :descritpion
  end
end
