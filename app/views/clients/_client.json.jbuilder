json.extract! client, :id, :name, :description, :contactperson, :phone, :officeline, :email, :building, :street, :location, :city, :country, :created_at, :updated_at
json.url client_url(client, format: :json)
