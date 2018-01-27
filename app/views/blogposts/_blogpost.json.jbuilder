json.extract! blogpost, :id, :title, :description, :display_name, :published_at, :slug, :created_at, :updated_at
json.url blogpost_url(blogpost, format: :json)
