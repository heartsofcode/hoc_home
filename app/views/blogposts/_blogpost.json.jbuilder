json.extract! blogpost, :id, :title, :description, :author_name, :published_at, :slug, :created_at, :updated_at
json.url blogpost_url(blogpost, format: :json)
