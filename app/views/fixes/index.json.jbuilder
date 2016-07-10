json.array!(@fixes) do |fix|
  json.extract! fix, :id, :version_id, :book_id, :contributor_id, :type, :fixed, :text
  json.url fix_url(fix, format: :json)
end
