json.extract! record, :id, :email, :cname, :disease_code, :total_deaths, :total_patients, :created_at, :updated_at
json.url record_url(record, format: :json)
