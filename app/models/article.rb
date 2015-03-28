class Article < ActiveRecord::Base

  def comment_search(name)
    self.comments['comments'].select {|comment| comment["name"] == name }
  end

  def comment_cache(name)
    Rails.cache.fetch([name, self.cache_key], expires_in: 1.minute) do
      self.comments['comments'].select {|comment| comment["name"] == name }
    end
  end

  def self.tag_list
    Article.all
  end

end
