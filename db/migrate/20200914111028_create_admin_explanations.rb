class CreateAdminExplanations < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_explanations do |t|
      t.belongs_to :project, index: true
      t.text :content

      t.timestamps
    end
  end
end
