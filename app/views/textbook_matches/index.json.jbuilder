json.array!(@textbook_matches) do |textbook_match|
  json.extract! textbook_match, :id, :from_user_id, :to_user_id, :textbook_id
  json.url textbook_match_url(textbook_match, format: :json)
end
