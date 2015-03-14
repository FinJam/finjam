json.array!(@people) do |person|
  json.extract! person, :id, :name, :description, :user_id
  json.url person_url(person, format: :json)
end
