json.extract! fav, :id, :user_id, :beach_id, :created_at, :updated_at
json.url fav_url(fav, format: :json)
