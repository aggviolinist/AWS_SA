# We are going to be using Secrets Manager to;
# 1. Get Username $ password from AWS Secrets Manager
## Tools & Services
### CloudFormation
### AWS Secrets Manager
## Create a CloudFormation Template to create it
```sh
template.yaml
```
## Deploy the template
```sh
./depoy.sh
```
# a. Retreving the Username and Password using Python
### Import boto3 to use that library
```sh
pip install boto3
touch main.py
Copy code from cosole
python main.py
```
>![Alt text](/output-images/sm.png?raw=true "The output as expected")
# b. Retreving the Username and Password using Ruby
### Using ruby
```sh
bunle init
bundle install
touch main.rb
bundle exec ruby main.rb
```
>![Alt text](/output-images/smrb.png?raw=true "The output as expected")
# What is different from ruby and python is, for python I needed to import JSON unlike ruby
# 2. Provide our own password to AWS Secrets Manager
## Update CloudFormation
```sh
template.yaml
```
>![Alt text](/output-images/smprov.png?raw=true "The output as expected")
