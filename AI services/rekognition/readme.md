# We want to see if AWS rekognize can be able to analyze my image
> PS: This image can be used for face detection to reduce crime rate
## Tools & Services
### AWS Rekognition
### S3
### Ruby
## Create an S3 bucket and upload our image
```sh
aws s3 mb s3://bucko
aws s3 cp myimage.jpg s3://bucko
```
## Analysis using ruby
```sh
bundle init
bundle install
touch main.rb
bundle exec ruby main.rb
```
## Output
![Alt text](/output-images/rekog.png?raw=true "The output shows that our image is 1. A person with 98% confidence, 2. Its a cartoon with 97% confidence")
