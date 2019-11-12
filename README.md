# buildkite-plugin-hello-world
example plugin that goes through basic steps any <client-name> buildkite plugin must through - lint, shellcheck, command hook test

## Example

```yml
steps:
  - plugins:
      - https://github.com/amasare/buildkite-plugin-hello-world#v1.0.0:
          hello_name: Ama
```

## Running on Buildkite
You'll need to run this pipeline on an agent that 
⋅⋅* can run `docker` commands
⋅⋅*  has `plugins-path` or `BUILDKITE_PLUGINS_PATH`

## Testing Locally
To run tests locally you will need to 
⋅⋅*  install bats. `brew install bats-core` on MacOS. Other installation instructions [here](https://github.com/bats-core/bats-core).
⋅⋅*  run tests with buildkites plugin tester which comes with supporting test libraries. `docker run it --rm  -v "$(pwd):/plugin" buildkite/plugin-tester`.


Testing recommendations [here](https://github.com/buildkite-plugins/buildkite-plugin-tester)