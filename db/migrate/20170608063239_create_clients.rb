class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :description
      t.string :contactperson
      t.string :phone
      t.string :officeline
      t.string :email
      t.string :building
      t.string :street
      t.string :location
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
