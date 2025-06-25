json.extract! loan, :id, :client_id, :lender_id, :amount, :start, :due, :status, :created_at, :updated_at
json.url loan_url(loan, format: :json)
