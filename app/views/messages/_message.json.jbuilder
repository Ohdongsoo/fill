json.extract! message, :id, :body, :user_id, :receiver, :created_at, :updated_at
json.url message_url(message, format: :json)
