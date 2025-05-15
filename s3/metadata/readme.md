## Create bucket
aws s3 mb s3://metadeira

## Writing file to text file
echo "There are some dope podcast in Kenya" > pod.txt

## Upload file with metadata
aws s3api put-object --bucket="metadeira" --key="pod.txt" --body="pod.txt" --metadata="97s=Sandwitch"

## Get metadata through head object
aws s3api head-object --bucket="metadeira" --key="pod.txt"