json.extract! event, :id, :name, :date, :hour, :description, :local, :repeating_frequency, :created_at, :updated_at
json.url event_url(event, format: :json)
