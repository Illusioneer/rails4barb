json.array!(@articles) do |article|
  json.extract! article, :id, :name, :title, :title_slug, :author, :content, :tags, :comments
  json.url article_url(article, format: :json)
end
