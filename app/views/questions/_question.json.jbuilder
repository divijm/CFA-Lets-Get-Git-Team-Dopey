json.extract! question, :id, :description, :user_id, :topic_id, :created_at, :updated_at
json.url question_url(question, format: :json)
