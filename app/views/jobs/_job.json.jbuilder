json.extract! job, :id, :name, :client_id, :description, :quantity, :datein, :duedate, :completeper, :completed, :percentcomplete, :expectedin, :status, :comment, :created_at, :updated_at
json.url job_url(job, format: :json)
