# Create a bucket

```
aws s3 mb s3://class-fun-vt-2209

```

# Create a file

```
echo "Hello,World." > hello.txt
aws s3 cp hello.txt s3://class-fun-vt-2209 --storage-class STANDARD_IA
```

# Cleanup

```
aws s3 rm s3://class-fun-vt-2209/hello.txt
aws s3 rb s3://class-fun-vt-2209
```