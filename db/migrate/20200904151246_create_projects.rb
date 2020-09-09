class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.text :pitch
      t.text :functionalities
      t.bigint :clicks
      t.bigint :value_of_project
      t.bigint :money_earned
      t.integer :number_of_developers_on_project
      t.integer :daily_time_spent_on_project_per_developer
      t.timestamps
    end
  end
end
