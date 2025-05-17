## Create a bucket
```sh
aws s3 mb s3://client-bucko
```
## Run our sdk ruby script 
```sh
bundle exec ruby encrypt.rb
```
## Clean up
```sh
aws s3 rm s3://client-bucko/hello.txt
aws s3 rb s3://client-bucko
```