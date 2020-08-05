#!/usr/bin/env python
# Use this code snippet in your app.
import boto3
import json
import sys

from botocore.exceptions import ClientError, NoCredentialsError
from os import environ


def get_secret():
    secret_name = "arn:aws:secretsmanager:us-west-2:841800532843:secret:ansible-vault-password-KgHLrY"
    region_name = "us-west-2"

    try:
        client = boto3.client('secretsmanager', region_name=region_name)
        get_secret_value_response = client.get_secret_value(SecretId=secret_name)
    except NoCredentialsError as e:
        print("No AWS Credentials found. Please check the README.md file.")
        sys.exit(1)
    except ClientError as e:
        if e.response['Error']['Code'] == 'ResourceNotFoundException':
            print("The requested secret " + secret_name + " was not found")
        elif e.response['Error']['Code'] == 'InvalidRequestException':
            print("The request was invalid due to:", e)
        elif e.response['Error']['Code'] == 'InvalidParameterException':
            print("The request had invalid params:", e)
        elif e.response['Error']['Code'] == 'AccessDeniedException':
            print("Access Denied to the secret", e)
        raise e

    else:
        # Decrypted secret using the associated KMS CMK
        # Depending on whether the secret was a string or binary, one of these fields will be populated
        if 'SecretString' in get_secret_value_response:
            secret = get_secret_value_response['SecretString']
        else:
            binary_secret_data = get_secret_value_response['SecretBinary']

        return secret


if __name__ == '__main__':
    secret=get_secret()
    print(secret)
