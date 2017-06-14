class AddPercentcompleteToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :percentcomplete, :string
  end
end
