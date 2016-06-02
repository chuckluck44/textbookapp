json.array!(@textbooks) do |textbook|
  json.extract! textbook, :id, :title, :isbn
  json.url textbook_url(textbook, format: :json)
end
