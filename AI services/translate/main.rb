require 'aws-sdk-translate'
require 'pry'

client = Aws::Translate::Client.new

text = "Hello, This is Kev. A big fan of Outkasts. I am listening to their album, AtLiens."
target_languages = ["es", "ar", "fr"]
target_languages.each do |lang|

  resp = client.translate_text({
    text: text,
    source_language_code: "en", # required
    target_language_code: lang # required
  })
 puts "Translation to #{lang}: #{resp.translated_text}"
end