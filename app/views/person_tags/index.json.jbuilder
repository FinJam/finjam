json.array!(@person_tags) do |person_tag|
  json.extract! person_tag, :id, :person_id, :tag_id
  json.url person_tag_url(person_tag, format: :json)
end
