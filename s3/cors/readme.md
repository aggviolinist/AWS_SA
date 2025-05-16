## Create a bucket
```sh
aws s3 mb s3://cors-samplezzz
```
## Change Block Public Access
```sh
aws s3api put-public-access-block --bucket = "cors-samplezzz" --public-access-block-configuration= "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPubliPolicy=false,RestrictPublicBuckets=false"
```
## Printing the Block above on CLI
```sh
aws s3api get-public-access-block --bucket = "cors-samplezzz"
```

## Create a bucket policy
```sh
aws s3api put-bucket-policy --bucket="cors-samplezzz" --policy="file://cors-policy.json"
```
## Turn on Static Website Hosting
```sh
aws s3api put-bucket-website --bucket="cors-samplezzz" --website-configuration="file://website.json"
```

## Upload our index.html file and include a resource that would be cross-origin

## Apply a CORS policy