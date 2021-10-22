json.extract! payment_request, :id, :amount, :currency, :description, :status, :external_payment_request_id, :created_at, :updated_at
json.url payment_request_url(payment_request, format: :json)
