## create a bucket

```
aws s3 mb s3://encrypt-client-vt2209
```

## run our sdk ruby script

```
bundle exec ruby encrypt.rb
```

## cleanup

```
aws s3 rm s3://encrypt-client-vt2209/hello.txt
aws s3 rb s3://encrypt-client-vt2209

```