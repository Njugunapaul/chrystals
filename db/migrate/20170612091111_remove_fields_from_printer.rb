class RemoveFieldsFromPrinter < ActiveRecord::Migration[5.1]
  def change
    remove_column :printers, :job
  end
end
