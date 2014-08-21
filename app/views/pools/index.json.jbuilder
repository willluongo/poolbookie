json.array!(@pools) do |pool|
  json.extract! pool, :id, :title, :buy_in
  json.url pool_url(pool, format: :json)
end
