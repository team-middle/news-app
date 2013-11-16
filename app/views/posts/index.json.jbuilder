json.array!(@posts) do |post|
  json.extract! post, :link, :description, :upvotes
  json.url post_url(post, format: :json)
end
