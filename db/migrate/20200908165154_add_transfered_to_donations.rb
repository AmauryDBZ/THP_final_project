class AddTransferedToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :transfered, :boolean
  end
end
