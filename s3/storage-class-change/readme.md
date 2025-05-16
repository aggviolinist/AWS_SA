## Create a bucket
aws s3 mb s3://change-daro

## Write into txt
echo "I want to change my storage class from Standard to Standard IA" > plan.txt

## Upload to bucket
aws s3 cp plan.txt s3://change-daro

## Change class
aws s3api put-object --bucket="change-daro" --key="plan.txt" --storage-class="STANDARD_IA" 
aws s3 cp plan.txt s3://change-daro --storage="STANDARD"
