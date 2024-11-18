json.extract! patientdisease, :id, :email, :disease_code, :created_at, :updated_at
json.url patientdisease_url(patientdisease, format: :json)
