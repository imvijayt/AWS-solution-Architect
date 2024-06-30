## create a bucket
```sh
aws s3 mb s3://cors-fun-vt2209
```
## change block public access

```sh
aws s3api put-public-access-block \
    --bucket cors-fun-vt2209 \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## create a bucket policy

aws s3api put-bucket-policy --bucket cors-fun-vt2209 --policy file://bucket-policy.json

## Turn on static website hositing

aws s3api put-bucket-website --bucket cors-fun-vt2209 --website-configuration file://website.json


## upload index.html file and include a resource that would be a cross origin

aws s3 cp index.html s3://cors-fun-vt2209

## view the website and index.html is working

http://cors-fun-vt2209.s3-website.ap-south-1.amazonaws.com


## upload our index.html
