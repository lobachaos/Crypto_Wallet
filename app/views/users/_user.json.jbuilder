json.extract! user, :id, :descryption, :password, :email, :account_budget, :created_at, :updated_at
json.url user_url(user, format: :json)
