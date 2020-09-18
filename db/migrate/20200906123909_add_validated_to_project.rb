class AddValidatedToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :validated, :boolean
  end
end
