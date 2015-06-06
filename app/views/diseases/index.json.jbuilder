json.array!(@diseases) do |disease|
  json.extract! disease, :id, :description, :name, :link, :early_signs
  json.url disease_url(disease, format: :json)
end
