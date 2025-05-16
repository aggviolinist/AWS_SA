## Create bucket
```sh
aws s3 mb s3://metadeira
```

## Writing file to text file
```sh
echo "There are some dope podcast in Kenya" > pod.txt
```

## Upload file with metadata
```sh
aws s3api put-object --bucket="metadeira" --key="pod.txt" --body="pod.txt" --metadata="97s=Sandwitch"
```

## Get metadata through head object
```sh
aws s3api head-object --bucket="metadeira" --key="pod.txt"
```