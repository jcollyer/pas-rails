json.array!(@programs) do |program|
  json.extract! program, :title, :body
  json.url program_url(program, format: :json)
end