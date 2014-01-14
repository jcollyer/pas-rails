json.array!(@photos) do |photo|
  json.extract! photo, :name, :category, :description
  json.url photo_url(photo, format: :json)
end