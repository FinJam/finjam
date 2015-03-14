json.array!(@enterprises) do |enterprise|
  json.extract! enterprise, :id, :name, :description, :user_id
  json.url enterprise_url(enterprise, format: :json)
end
