json.array!(@outcomes) do |outcome|
  json.extract! outcome, :id, :title, :summary
  json.url outcome_url(outcome, format: :json)
end
