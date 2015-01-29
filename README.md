# docker-textql

According to [dinedal](https://github.com/dinedal/textql), TextQL is a tool which

  ```
  Allows you to easily execute SQL against structured text like CSV or TSV
  ```

This repositorie is a dockerized version of this app.

# How to use it ?

## Simple run (can do nothing, no data included)

Show available options 

```bash
docker run --rm -it jpierre03/textql textql --help
```

## Use it with real data

A volume should be attached to share folder with container.
Assuming current working directory contains data.
Data will be available in `/mnt/` folder.

```bash
docker run --rm -it -v `pwd`:/mnt/ jpierre03/textql textql --source /mnt/data.csv  -header -sql "SELECT * FROM tbl"
```
