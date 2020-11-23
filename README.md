# The docker image for toml-cli

- Docker hub: https://hub.docker.com/r/k0st1an/toml-cli
- toml-cli: https://github.com/mrijken/toml-cli

## Usage

```shell
$ docker run --rm k0st1an/toml-cli:0.1.3 --help
Usage: toml [OPTIONS] COMMAND [ARGS]...

Options:
  --install-completion [bash|zsh|fish|powershell|pwsh]
                                  Install completion for the specified shell.
  --show-completion [bash|zsh|fish|powershell|pwsh]
                                  Show completion for the specified shell, to
                                  copy it or customize the installation.

  --help                          Show this message and exit.

Commands:
  add_section  Add a section with the given key
  get          Get a value from a toml file
  set          Set a value to a toml file
  unset        Unset a value from a toml file
```

```shell
$ touch main.toml
$ docker run --rm -v $(pwd):/tmp k0st1an/toml-cli:0.1.3 set --toml-path /tmp/main.toml test 42
$ docker run --rm -v $(pwd):/tmp k0st1an/toml-cli:0.1.3 get --toml-path /tmp/main.toml test
42
$ cat main.toml
test = "42"
```
