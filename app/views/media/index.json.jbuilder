json.array!(@media) do |medium|
  json.extract! medium, :title, :body
  json.url medium_url(medium, format: :json)
end