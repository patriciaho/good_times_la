json.array!(@good_times) do |good_time|
  json.extract! good_time, :id, :name, :description, :picture, :visit
  json.url good_time_url(good_time, format: :json)
end
