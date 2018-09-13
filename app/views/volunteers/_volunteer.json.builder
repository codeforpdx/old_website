json.extract! volunteer, :id, :name, :email, :project, :role, :created_at, :updated_at
json.url blog_url(volunteer, format: :json)
