json.array!(@midsurveys) do |midsurvey|
  json.extract! midsurvey, :id, :name, :review
  json.url midsurvey_url(midsurvey, format: :json)
end
