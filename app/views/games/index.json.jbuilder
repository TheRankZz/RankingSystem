json.array!(@games) do |game|
  json.extract! game, :id, :title, :description, :image, :developer, :link
  json.url game_url(game, format: :json)
end
