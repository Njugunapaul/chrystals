class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.references :client, foreign_key: true
      t.text :description
      t.integer :quantity
      t.datetime :datein
      t.datetime :duedate
      t.string :expectedin
      t.string :status
      t.string :comment

      t.timestamps
    end
  end
end
