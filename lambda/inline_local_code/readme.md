# This time we will be uploading code to lambda from a folder called functions with our code
# Tools
## Cloudformation
## s3
## SAM (Serveless Application Model)
## Lambda
## Make a template
template.yml
## Create a bucket
```sh
aws s3 mb s3://obako
```
> This is where the code is stored
## Made a python simple code to take in my name and output it in lambda
```sh
functions/functions.py
```
## Using lint to test our template for errors
```sh
./lint.sh
```
## Ensuring our bucket is able to be read by sam
```sh
samconfig.toml
```
> This is where we define our created bucket
## Using SAM
```sh
sam build
./bin/deploy
```
## Output on lambda
![Alt text](/output-images/lambda2.png?raw=true "The output on lambda")
