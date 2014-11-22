json.array!(@largesurveys) do |largesurvey|
  json.extract! largesurvey, :id, :name, :review
  json.url largesurvey_url(largesurvey, format: :json)
end
