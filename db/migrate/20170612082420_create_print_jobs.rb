class CreatePrintJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :print_jobs do |t|
      t.string :name
      t.belongs_to :job, foreign_key: true
      t.text :Description
      t.integer :quantity

      t.timestamps
    end
  end
end
