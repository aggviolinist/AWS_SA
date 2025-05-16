## Create bucket
```sh
aws s3 mb s3://bucko-policies
```
## Giving user direct access
```sh
aws s3api put-bucket-policy --bucket= "bucko-policies" --policy= "file://policy.json"
```
