json.array!(@gifts) do |gift|
  json.extract! gift, :section, :sectionb, :sectionc, :sectiond
  json.url gift_url(gift, format: :json)
end