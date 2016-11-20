json.extract! lottery_ticket, :id, :name, :force, :created_at, :updated_at
json.url lottery_ticket_url(lottery_ticket, format: :json)