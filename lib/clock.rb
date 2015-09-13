require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'clockwork'

include Clockwork

# every(30.seconds, 'post current time per 30sec') { Post.post_current_time 'per 30sec' }
every(30.minutes, 'post current time per 5min') { Post.post_current_time 'per 30min' }
every(1.day, 'post current time per day', at: '21:00') { Post.post_current_time 'per day' }
