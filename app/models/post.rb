class Post < ActiveRecord::Base
  def self.post_current_time
    Post.create(body: Time.current.strftime('%Y年%m月%d日 %H:%M:%S'))
  end
end
