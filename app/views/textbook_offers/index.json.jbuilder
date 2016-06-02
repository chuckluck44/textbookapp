json.array!(@textbook_offers) do |textbook_offer|
  json.extract! textbook_offer, :id, :user_id, :textbook_id
  json.url textbook_offer_url(textbook_offer, format: :json)
end
