json.array!(@users) do |user|
  json.extract! user, :name, :about
  json.url user_url(user, format: :json)
end
