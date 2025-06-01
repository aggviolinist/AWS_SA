require 'aws-sdk-textract'
require 'pry'

client = Aws::Textract::Client.new region: 'us-east-1'
bucket = 'bucko'
name = 'tax.jpg'
resp = client.analyze_document({
  document: { # required
    s3_object: {
      bucket: bucket,
      name: name#,
      #version: "S3ObjectVersion",
    },
  },
  # required, accepts TABLES, FORMS, QUERIES, SIGNATURES, LAYOUT
  feature_types: ["TABLES"] 
})
binding.pry