class CreateBankDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_details do |t|
      t.belongs_to :user, index: true
      t.string :bank_name
      t.string :iban
      t.string :branch_code
      t.string :bank_code
      t.string :account_number
      t.string :key
      t.timestamps
    end
  end
end
