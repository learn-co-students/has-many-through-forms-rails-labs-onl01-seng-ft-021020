class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def unique_comment_posts
    self.comments
  end
end
