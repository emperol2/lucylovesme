json.array!(@static_pages) do |static_page|
  json.extract! static_page, :id, :about, :tag1, :tag2, :tag3, :tag4, :thinking, :skills
  json.url static_page_url(static_page, format: :json)
end
