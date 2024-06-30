## create a bucket

```
aws s3 mb s3://class-bucket-policy-2209
```

## creating bucket policy

```
aws s3api put-bucket-policy --bucket class-bucket-policy-2209 --policy file://policy.json
```

## cleanup

```
aws s3 rb s3://class-bucket-policy-2209
```