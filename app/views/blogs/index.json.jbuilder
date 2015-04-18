json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :image, :desc, :tag, :user_id
  json.url blog_url(blog, format: :json)
end
