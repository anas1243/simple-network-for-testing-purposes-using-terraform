# Provision Basic Network Using Terraform for testing purposes

## Infrastructure Components

1. Create a `VPC` and attach an `internet-gateway` to it
2. Create 2 public subnets and attach public `route table` to it
3. Create 2 private subnets and attach private `route table` to it
4. Create 1 `Nat-gateway` in a public `subnet` and attach an `elastic IP` to it
5. Create a public `EC2` in a public `subnet`
