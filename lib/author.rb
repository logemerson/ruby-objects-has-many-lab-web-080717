require 'pry'

class Author
  attr_accessor :name
  @@post_count = 0

  def initialize (name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @@post_count += 1
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    self.add_post(new_post)
  end

  def self.post_count
    @@post_count
  end

end
