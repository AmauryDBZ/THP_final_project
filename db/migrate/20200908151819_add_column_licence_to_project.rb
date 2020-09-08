class AddColumnLicenceToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :licence, :string
  end
end
