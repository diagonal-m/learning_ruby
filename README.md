# learning_ruby
Ruby習得用レポジトリ

```bash
$ ls
Dockerfile README.md
$ docker build -f Dockerfile -t ruby-notebook --no-cache . 
```



```bash
$ docker run --name ruby-notebook --rm -v $(pwd):/tmp -p 8000:8000 ruby-notebook:latest
```

