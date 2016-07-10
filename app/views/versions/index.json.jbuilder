json.array!(@versions) do |version|
  json.extract! version, :id, :book_id, :version, :released_on
  json.url version_url(version, format: :json)
end
