class RemoveJobFromPrinter < ActiveRecord::Migration[5.1]
  def change
    remove_reference :printers, :job, foreign_key: true
  end
end
