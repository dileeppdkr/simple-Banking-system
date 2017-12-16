json.extract! withdrawal, :id, :user_id, :date, :amount, :created_at, :updated_at
json.url withdrawal_url(withdrawal, format: :json)
