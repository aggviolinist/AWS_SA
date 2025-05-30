require 'aws-sdk-comprehend'
require 'pry'

client = Aws::Comprehend::Client.new
text = "I honestly can’t believe the kind of noise people are calling “music” these days. It’s like someone threw a drum machine down a flight of stairs and hit record. The lyrics make no sense, the beats are recycled from a dozen other forgettable tracks, and don’t even get me started on the auto-tune—it’s like listening to a robot having a meltdown. I gave it a chance, I really did, but halfway through the second chorus I felt like my ears were begging for mercy. There’s no soul, no originality, just a bunch of synthetic sounds mashed together to fit some TikTok trend. It’s all flash, no substance. I miss the days when music actually moved you, not made you want to run for the mute button."

resp = client.detect_sentiment({
    text: text,
    language_code: 'en'
})
# binding.pry
puts "The sentiment of the text is #{resp.sentiment}"