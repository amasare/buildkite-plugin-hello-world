# buildkite-plugin-hello-world
example plugin that goes through basic steps any buildkite plugin will like to go through - build, lint, test, version

## Example

```yml
steps:
  - plugins:
      - https://github.com/amasare/buildkite-plugin-hello-world:
            hello_name: Ama
```