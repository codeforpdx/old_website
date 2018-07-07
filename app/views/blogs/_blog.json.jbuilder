json.extract! blog, :id, :title, :subtitle, :text, :img, :created_at, :updated_at
json.url blog_url(blog, format: :json)
