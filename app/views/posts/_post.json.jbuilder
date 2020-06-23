json.extract! post, :id, :name, :video, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
