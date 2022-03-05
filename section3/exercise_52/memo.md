make files

```
touch -d 202203050101 file1.txt
touch -d 202203040101 file2.txt
touch -d 202203030101 file3.txt
touch -d 202203020101 file4.txt
```

---

find example

```
find ./ -name file1.txt
```

using regexp

```
find ./ -name "file*"
```

-type option

-f : file
```
find ./ -type f
```

-size : file size

```
find ./ -size 0
```

-user : owner
```
find ./ -user root
```

---

-atime ; search by access time

accessed at least 2 days ago or later.

```
find ./ -atime -2
```

accessed more than two days ago

```
find ./ -atime +1
```

-> not created time.

---

to see the last accessed time

```
ls -ul
```


to see the last updated time

```
ls -l
```

---

- mtime : search by updated time

```
find ./ -mtime -2
```

```
find ./ -mtime +1
```


---

- amin : m = minutes

```
find ./ -amin -1000
```

---

You can use two or more options at once.

```
find ./ -atime -2 -type f
```

---

if you want to remove files that you found.

```
find ./ -mtime +1 -type f -exec rm {} \;
```

---

which command : to show the place of the command
type : 


