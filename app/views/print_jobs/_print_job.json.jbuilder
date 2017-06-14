json.extract! print_job, :id, :name, :job_id, :Description, :quantity, :created_at, :updated_at
json.url print_job_url(print_job, format: :json)
