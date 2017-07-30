# docker-git

- [https://git-scm.com/doc](https://git-scm.com/doc)

**.bashrc** or **.bash_profiles**
```bash
git () {
    GIT_VERSION="2.13.0"
    docker run \
        --rm \
        --workdir /custom \
        --volume $(pwd):/custom \
        dohjon/docker-git:$GIT_VERSION \
        "$@"
}
```

Terminal
```bash
$ docker run --rm --workdir /custom --volume $(pwd):/custom dohjon/docker-git:2.13.0
```

Debug
```bash
$ docker run --rm -it --entrypoint /bin/sh --workdir /custom --volume $(pwd):/custom dohjon/docker-git:2.13.0
```