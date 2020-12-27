curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

aws configure set
aws configure set aws_access_key_id = --profile SELECTEL
aws configure set aws_secret_access_key '=' --profile SELECTEL
aws configure set default.region = --profile SELECTEL
aws configure set endpoint-url - --profile SELECTEL

aws configure set aws_access_key_id = --profile AMAZON
aws configure set aws_secret_access_key '--' --profile AMAZON
aws configure set default.region = --profile AMAZON
aws configure set endpoint-url - --profile AMAZON


aws s3 cp ./testbox/* s3://wiz417-bucket/newtest/
aws s3 cp ./testbox/* s3://wiz417-bucket/newtest/
