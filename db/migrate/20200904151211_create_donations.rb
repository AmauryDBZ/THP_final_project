class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.belongs_to :project, index: true
      t.string :stripe_customer_id
      t.string :stripe_email
      t.integer :amount
      t.timestamps
    end
  end
end
