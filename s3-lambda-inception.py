import os
import boto3
import urllib.request

def handler(event, context):
    urllib.request.urlretrieve(os.environ['URI'], "/tmp/tmp.zip")
    conn = boto3.client('s3')
    conn.upload_file("/tmp/tmp.zip", os.environ['S3_BUCKET'], os.environ['S3_FILENAME'])
