## Create new bucket

```sh
aws s3api create-bucket --bucket acl-exmaple-vt-2209 --region us-east-1
```
## setting public access to bucket

```sh
aws s3api put-public-access-block \
    --bucket acl-exmaple-vt-2209 \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=true"
```

## hange bucket ownership

```
aws s3api put-bucket-ownership-controls \
    --bucket acl-exmaple-vt-2209  \
    --ownership-controls="Rules=[{ObjectOwnership=BucketOwnerPreferred}]"
```