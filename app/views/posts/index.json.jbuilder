json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :enterprise_id, :organization_id
  json.url post_url(post, format: :json)
end
