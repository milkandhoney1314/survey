json.array!(@smallsurveys) do |smallsurvey|
  json.extract! smallsurvey, :id, :name, :review
  json.url smallsurvey_url(smallsurvey, format: :json)
end
