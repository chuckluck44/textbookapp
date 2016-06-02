json.array!(@textbook_requests) do |textbook_request|
  json.extract! textbook_request, :id, :user_id, :textbook_id
  json.url textbook_request_url(textbook_request, format: :json)
end
