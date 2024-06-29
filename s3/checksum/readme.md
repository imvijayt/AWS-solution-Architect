## create a new bucket

```md
aws s3 mb s3://checksums-examples-122122
```

## Create a file that will we do a checksum on

```
echo "Hello Mars" > myfile.txt
```

## get checksum of  a file for md5
```
md5sum myfile.txt
#8ed2d86f12620cdba4c976ff6651637f  myfile.txt
```
## upload our file to s3
```
aws s3 cp myfile.txt s3://checksums-examples-122122
aws s3api head-object --bucket checksums-examples-122122 --key myfile.txt
```


## let's upload of file with different kind of checksum

```sh
sudo apt install rhash -y
rhash --crc32 --simple myfile.txt
```

```sh
aws s3api put-object \
    --bucket checksums-examples-122122 \
    --key myfilecrc32.txt \
    --body myfile.txt \
    --checksum-algorithm "CRC32"


```