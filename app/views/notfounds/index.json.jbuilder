json.array!(@notfounds) do |notfound|
  json.extract! notfound, :id, :site_url
  json.url notfound_url(notfound, format: :json)
end
