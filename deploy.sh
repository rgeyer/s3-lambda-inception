#!/usr/bin/env bash
zip -r s3-lambda-inception.zip s3-lambda-inception.py
base64_zip_string=$(base64 -w0 s3-lambda-inception.zip)
sed_cmd="s,@@BASE64_ZIP_STRING,$base64_zip_string,"
sed $sed_cmd package.cat.rb.template > package.cat.rb
