json.array!(@sweets) do |sweet|
  json.extract! sweet, :id, :name, :photo
  json.url sweet_url(sweet, format: :json)
end
