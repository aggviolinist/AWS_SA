# We will be using AWS textract to extract text from a scanned document
# Tools & Services
## AWS Textract
## Ruby
## Create bucket
```sh
aws s3 mb s3://bucko
```
## Upload the document to our bucket
```sh
aws s3 cp tax.jpg s3://bucko
```
## Extracting using ruby
```sh
touch main.rb
bundle init
bundle install
bundle exec ruby main.rb
```

## Output
![Alt text](/output-images/textract.png?raw=true "The output extracts text from our scanned tax document")