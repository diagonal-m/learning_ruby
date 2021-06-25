# docker run --name ruby-jupyter --rm -v $(pwd):/tmp -p 8000:8000 ruby-jupyter:latest
FROM python:3.8

# デフォルトの locale `C` を `C.UTF-8` に変更する
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# タイムゾーンを日本時間に変更
ENV TZ Asia/Tokyo

# /tmpにコピー
COPY . /tmp

# 相対パスの基準ディレクトリ
WORKDIR /tmp

RUN apt update && \
    apt -y install ruby ruby-dev jupyter-notebook ruby-ffi-rzmq && \
    gem install iruby && \
    iruby register --force

CMD ["jupyter-notebook", "--port", "8000", "--ip=0.0.0.0", "--allow-root"]