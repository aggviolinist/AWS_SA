#This maven set up helps us create a java project
#https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/setup-project-maven.html

mvn -B archetype:generate \
 -DarchetypeGroupId=software.amazon.awssdk \
 -DarchetypeArtifactId=archetype-lambda -Dservice=s3 -Dregion=US_WEST_2 \
 -DarchetypeVersion=2.31.42 \
 -DgroupId=com.example.myapp \
 -DartifactId=myapp