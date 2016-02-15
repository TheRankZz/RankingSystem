json.array!(@ratings) do |rating|
  json.extract! rating, :id, :game_id, :user_id, :description, :title
  json.url rating_url(rating, format: :json)
end
