# Using Dynamo DB, AppSync && GraphQL to query on my CLI
# Tools & Services
### GraphQL
### AppSync
### Dynamo DB
## Create Database and add items
Do this on the console
## Create an APPSync api and use dynamoDB as source
Do this on the console
## Integrate with your app
```sh
npm install aws-amplify
```
## Set up NPM project
```sh
npm init -y
```
## Create a main.js to import the Amplify Library and your configuration to set up Amplify.
```sh
touch main.js
```
## Generate codegen
```sh
npx @aws-amplify/cli codegen add --apiId abcd --region us-east-1
```
This creates the src folder with mutation, queries and subsriptions .js files that we are going to use to use to query the data in DB to gitpod
## Read the data from Dynamo DB
Its on the main.js file
## Run npm
```sh
npm start
```
## Output of the Appsync from Dynamo DB
![Alt text](/output-images/appsync.png?raw=true "The data quried")
