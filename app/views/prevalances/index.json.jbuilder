json.array!(@prevalances) do |prevalance|
  json.extract! prevalance, :id, :case_count, :disease, :screened, :california_region, :disorder_percent
  json.url prevalance_url(prevalance, format: :json)
end
