# docker-git

- [https://git-scm.com/doc](https://git-scm.com/doc)

## Usage

**.bashrc** or **.bash_profiles**
```bash
git () {
    docker run \
        --rm \
        --env USER="" \
        --env EMAIL="" \
        --env GITHUB_USERNAME="" \
        --env GITHUB_PASSWORD="" \
        --workdir /custom \
        --volume $(pwd):/custom \
        dohjon/docker-git:latest \
        "$@"
}
```

Terminal
```bash
docker run \
    --rm \
    --workdir /custom \
    --volume $(pwd):/custom \
    --env USER="" \
    --env EMAIL="" \
    --env GITHUB_USERNAME="" \
    --env GITHUB_PASSWORD="" \
    dohjon/docker-git:latest
```

Debug
```bash
docker run \
    --interactive \
    --tty \
    --entrypoint /bin/sh
    --rm \
    --workdir /custom \
    --volume $(pwd):/custom \
    --env USER="" \
    --env EMAIL="" \
    --env GITHUB_USERNAME="" \
    --env GITHUB_PASSWORD="" \
    dohjon/docker-git:latest
```

