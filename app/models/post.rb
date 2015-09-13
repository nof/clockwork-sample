class Post < ActiveRecord::Base
  def self.post_current_time(title)
    Post.create(body: "#{title}: #{Time.current.strftime('%Y年%m月%d日 %H:%M:%S')}")
  end
end
