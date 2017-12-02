import os
import boto3
import urllib.request

def handler(event, context):
    urllib.request.urlretrieve(event['URI'], "/tmp/tmp.zip")
    conn = boto3.client('s3')
    conn.upload_file("/tmp/tmp.zip", event['S3_BUCKET'], event['S3_FILENAME'])
