json.extract! cron, :id, :name, :unique_id, :url, :expression, :grace_period, :enabled, :created_at, :updated_at
json.url cron_url(cron, format: :json)
