json.array!(@jsonuserdata) do |jsonuserdatum|
  json.extract! jsonuserdatum, :id, :name, :usertype, :status
  json.url jsonuserdatum_url(jsonuserdatum, format: :json)
end
