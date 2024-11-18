json.extract! user, :id, :email, :name, :surname, :phone, :cname, :salary, :created_at, :updated_at
json.url user_url(user, format: :json)
