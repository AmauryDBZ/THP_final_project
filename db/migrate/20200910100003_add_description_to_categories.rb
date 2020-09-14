class AddDescriptionToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :descritpion, :text
    add_column :categories, :url, :string
  end
end
