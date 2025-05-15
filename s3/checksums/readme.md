## Create a new s3 bucket

```md
aws s3 mb s3://checksum-sample
```

## Create a file that we will do a checksum on

```md
echo "Hello Friday" > myfile.txt
```

## Get the Checksum of the file for md5

md5sum myfile.txt

## a4480cd7717508b520993b29beff4e19  myfile.txt