## Create a new s3 bucket

```md
aws s3 mb s3://checksum-sample
```

## Create a file that we will do a checksum on

```md
echo "Hello Friday" > myfile.txt
```

## Get the Checksum of the file for md5

```md
md5sum myfile.txt
## a4480cd7717508b520993b29beff4e19  myfile.txt
```

## Upload our file and look at its etag

```md
aws s3 cp myfile.txt s3://checksum-sample
aws s3api head-object --bucket checksum-sample --key myfile.txt
```

## uploading file with a different checksum

```
bundle exec ruby crc.rb

```

```sh
aws s3api put-object --bucket="checksum-sample" --key="myfilecrc32.txt" --body="myfile.txt" --checksum-algorithm="CRC32" --checksum-crc32=" " 

```