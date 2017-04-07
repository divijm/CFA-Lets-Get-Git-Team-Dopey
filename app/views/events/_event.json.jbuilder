json.extract! event, :id, :user_id, :topic_id, :title, :description, :time, :host, :created_at, :updated_at
json.url event_url(event, format: :json)
