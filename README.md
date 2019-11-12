# buildkite-plugin-hello-world
example plugin that goes through basic steps any <client-name> buildkite plugin must through - lint, shellcheck, command hook test

## Example

```yml
steps:
  - plugins:
      - https://github.com/amasare/buildkite-plugin-hello-world#v1.0.0:
          hello_name: Ama
```