# learning_ruby
Ruby習得用レポジトリ

### Dockerイメージ作成

```bash
$ ls
Dockerfile README.md
$ docker build -f Dockerfile -t ruby-notebook --no-cache . 
```

### コンテナ起動

```bash
$ docker run --name ruby-notebook --rm -v $(pwd):/tmp -p 8000:8000 ruby-notebook:latest
```

