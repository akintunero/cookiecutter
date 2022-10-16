aws ec2 run-instances \
    --image-id ami-0a4e06ccf954131db \
    --count 1 \
    --instance-type t2.micro \
    --key-name MyKeyPairCli \
    --security-group-ids sg-019aa8917448f7e16 \
    --subnet-id subnet-0937cb23f33cae425

aws ec2 create-security-group --group-name my-sg --description "My SG" --vpc-id vpc-03bb8830f7b31aa35
aws ec2 describe-security-groups
aws ec2 authorize-security-group-ingress --group-id sg-019aa8917448f7e16 --protocol tcp --port 22 --cidr 0.0.0.0/0
aws ec2 create-key-pair --key-name MyKeyPairCli --query 'KeyMaterial' --output text > MyKeyPairCli.pem
aws ec2 describe-subnets
