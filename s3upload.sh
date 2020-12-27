curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

aws configure set aws_access_key_id -
aws configure set aws_secret_access_key -
aws configure set default.region eu-north-1

aws s3 cp ./testbox/* s3://wiz417-bucket/newtest/
aws s3 cp ./testbox/* s3://wiz417-bucket/newtest/
