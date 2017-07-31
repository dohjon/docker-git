# docker-git

- [https://git-scm.com/doc](https://git-scm.com/doc)

## Usage

### Mac/Linux

**~/.bashrc** or **~/.bash_profiles**
```bash
git () {
    docker run \
        --rm \
        --env NAME="" \
        --env EMAIL="" \
        --env GITHUB_USERNAME="" \
        --env GITHUB_PASSWORD="" \
        --env GITLAB_USERNAME="" \
        --env GITLAB_PASSWORD="" \
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
    --env NAME="" \
    --env EMAIL="" \
    --env GITHUB_USERNAME="" \
    --env GITHUB_PASSWORD="" \
    --env GITLAB_USERNAME="" \
    --env GITLAB_PASSWORD="" \
    --workdir /custom \
    --volume $(pwd):/custom \
    dohjon/docker-git:latest
```

Debug
```bash
docker run \
    --interactive \
    --tty \
    --entrypoint /bin/sh
    --rm \
    --env NAME="" \
    --env EMAIL="" \
    --env GITHUB_USERNAME="" \
    --env GITHUB_PASSWORD="" \
    --env GITLAB_USERNAME="" \
    --env GITLAB_PASSWORD="" \
    --workdir /custom \
    --volume $(pwd):/custom \
    dohjon/docker-git:latest
```

### Win

**~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1**
```powershell
function git() { 
    docker run `
        --rm `
        --env NAME="" `
        --env EMAIL="" `
        --env GITHUB_USERNAME="" `
        --env GITHUB_PASSWORD="" `
        --env GITLAB_USERNAME="" `
        --env GITLAB_PASSWORD="" `
        --workdir /custom `
        --volume ${pwd}:/custom `
        dohjon/docker-git:latest `
        $args
}
```

Terminal
```powershell
docker run `
    --rm `
    --env NAME="" `
    --env EMAIL="" `
    --env GITHUB_USERNAME="" `
    --env GITHUB_PASSWORD="" `
    --env GITLAB_USERNAME="" `
    --env GITLAB_PASSWORD="" `
    --workdir /custom `
    --volume ${pwd}:/custom `
    dohjon/docker-git:latest
```

Debug
```powershell
docker run `
    --interactive `
    --tty `
    --entrypoint /bin/sh `
    --rm `
    --env NAME="" `
    --env EMAIL="" `
    --env GITHUB_USERNAME="" `
    --env GITHUB_PASSWORD="" `
    --env GITLAB_USERNAME="" `
    --env GITLAB_PASSWORD="" `
    --workdir /custom `
    --volume ${pwd}:/custom `
    dohjon/docker-git:latest
```