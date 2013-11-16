json.array!(@comments) do |comment|
  json.extract! comment, :post_id, :user_id, :content, :upvotes
  json.url comment_url(comment, format: :json)
end
