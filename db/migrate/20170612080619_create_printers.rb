class CreatePrinters < ActiveRecord::Migration[5.1]
  def change
    create_table :printers do |t|
      t.string :name
      t.text :description
      t.string :operator
      t.belongs_to :job, foreign_key: true

      t.timestamps
    end
  end
end
