## creating new bucket

```sh
aws s3 mb s3://encryption-fun-vt2209
```

## creating a file

```sh
echo "Hello World!" > hello.txt
aws s3 cp hello.txt s3://encryption-fun-vt2209
```

## put object with encryption of KMS

```sh
aws s3api put-object --bucket encryption-fun-vt2209 \
--key hello.txt \
--body hello.txt \
--server-side-encryption aws:kms \
--ssekms-key-id