#!/usr/bin/env bash
zip -r s3-lambda-inception.zip s3-lambda-inception.py
cp package.cat.rb.template package.cat.rb
base64_zip_string=$(base64 s3-lambda-inception.zip)
sed -i '' "s,@@BASE64_ZIP_STRING,\"$base64_zip_string\"," package.cat.rb
