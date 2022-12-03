json.extract! post, :id, :title, :Description, :created_at, :updated_at
json.url post_url(post, format: :json)
