json.extract! meeting, :id, :title, :subtitle, :location, :eventstart, :timeofevent, :url, :body, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
