class AddFieldsToPrintJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :print_jobs, :code, :string
    add_column :print_jobs, :printer, :belongs_to
    add_column :print_jobs, :starttime, :datetime
    add_column :print_jobs, :endtime, :datetime
    
  end
end
