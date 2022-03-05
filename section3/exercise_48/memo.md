install tar

```
yum install tar
```

---

## tar

compress with tar

```
tar -cf file.tar file1 file2 ...
```

---

decompress with tar

```
tar -xf file.tar
```

---

## gzip

compress for .tar.fgz

```
tar -czf file.tar.gz file1 file2 file3
```

decompress

```
tar -xzf file.tar.gz
```

---

## bzip2

```
yum install bzip2
```

compress

```
tar -cjf file.tar.bz2 file1 file2 file3
```

decompress

```
tar -xjf file.tar.bz2
```

### xz

```
tar -xJf file.tar.xz file1 file2 file3
```


## gzip

compress

```
gzip file1
```

decompress

```
gunzip file1.gz
```

or

```
gzip -d file1.gz
```

compress revursively

```
gzip -r dir1/
```

compress using regexp

```
gzip file?
```
