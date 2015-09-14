namespace :cron do
  desc 'post current time by task'
  task post_current_time: :environment do
    Post.post_current_time 'by task'
  end
end