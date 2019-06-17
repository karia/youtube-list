require 'yt'

Yt.configuration.api_key = ENV['YOUTUBE_API_KEY']
channel_id = ARGV[0]

item = Yt::Playlist.new(id: channel_id).playlist_items

item.each do |i|
  puts "- https://www.youtube.com/watch?v=#{i.video_id}"
  puts "-- #{i.title} (#{i.published_at.getlocal.strftime('%Y/%m/%d')}公開)"
end
