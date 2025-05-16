## Creating bucko
```sh
aws s3 md s3://bucko-jamo-safi
```

## Creating a folder
```sh
aws s3api put-object --bucket="bucko-jami-safi" --key="hey/"
```

## Creating many folders
```sh
aws s3api put-object --bucket="bucko-jamo-safi" --key="hey/hey/hey/hey/"
```