json.array!(@books) do |book|
  json.extract! book, :id, :title=string, :version=string, :released_on=date
  json.url book_url(book, format: :json)
end
