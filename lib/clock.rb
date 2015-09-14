require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'clockwork'

include Clockwork

# every(30.seconds, 'post current time per 30sec') { Post.post_current_time 'per 30sec' }
# every(30.minutes, 'post current time per 30min') { Post.post_current_time 'per 30min' }
every(1.hour, 'post current time per hour', :at => '**:00') { Post.post_current_time 'per hour' }
every(1.day, 'post current time per day', at: '21:00') { Post.post_current_time 'per day' }

every(1.hour, 'post current time by task', :at => '**:00') { `rake cron:post_current_time` }
