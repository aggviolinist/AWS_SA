# WEBSITE 1
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
```sh
aws s3 cp index.html s3://cors-samplezzz
```

## View the website and see the index.html is there

http://corz-samplezzz.s3-website-us-east-1.amazonaws.com
http://cors-samplezzz.s3-website.us-east-1.amazonaws.com
Bucket name.s3-website.region

# WEBSITE 2
## Create a bucket
```sh
aws s3 mb s3://hosting-sampo
```
## Change Block Public Access
```sh
aws s3api put-public-access-block --bucket="hosting-sampo" --public-access-block-configuration="BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## Print the public access policies on the terminal
```sh
aws s3api get-public-access-block --bucket="hosting-sampo"
```

## Creating a bucket Policy
```sh
aws s3api put-bucket-policy --bucket="hosting-sampo" --policy="file://cors-policy2.json"
```
## Turn on Static web-hosting
```sh
aws s3api put-bucket-website --bucket="hosting-sampo" --website-configuration="file://revised-website.json"
```

## Copy the file to Bucket
```sh
aws s3 cp hello.js s3://hosting-sampo
```

## Apply a CORS policy
