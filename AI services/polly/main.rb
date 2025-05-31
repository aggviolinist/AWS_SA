require 'aws-sdk-polly'
require 'pry'

client = Aws::Polly::Client.new

resp = client.synthesize_speech({
  engine: "standard",
  output_format: "mp3", 
  sample_rate: "8000", 
  text: "All Gaul is divided into three parts", 
  text_type: "text", 
  voice_id: "Amy", 
})

File.open('sample.mp3', 'w') do |file| 
  data = resp.audio_stream.read
  file.write data
end