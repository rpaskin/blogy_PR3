json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :when_posted
  json.url post_url(post, format: :json)
end
