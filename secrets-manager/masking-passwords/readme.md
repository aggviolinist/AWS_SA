# If we must hard code a password when defining a cloudformation template
## Create a CloudFormation template
```sh
template.yaml
```
## Create a deploy script when deploying the template
```sh
touch deploy.sh
chmod u+x deploy.sh
./deploy.sh
```
>https://awscli.amazonaws.com/v2/documentation/api/latest/reference/cloudformation/deploy/index.html
>We are will be using --parameter-overrides to commit our password 
 
## Output
>![Alt text](/output-images/smpass.png?raw=true "The password was hidden")

