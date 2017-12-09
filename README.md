# s3-lambda-inception
A lambda function, which can be used to download a lambda deployment package from a URL and upload it to S3.

# RightScale CAT Usage
This was conceived of largely for use with RightScale Cloud Application Templates (CATs) in combination with the [Lambda Plugin](https://github.com/rightscale/rightscale-plugins/tree/master/aws/rs_aws_lambda).

This function allows you to automate the step of fetching the deployment package zipfile for your Lambda function, and uploading it to S3, rather than requiring the deployment package to already exist as a prerequisite.
