json.array!(@users) do |user|
  json.extract! user, :id, :name, :status, :usertype
  json.url user_url(user, format: :json)
end
