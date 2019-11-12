#!/usr/bin/env bats

load "$BATS_PATH/load.bash"

command_hook="$PWD/hooks/command"


@test "output hello world with name when name exists" {

  export BUILDKITE_PLUGIN_HELLO_NAME="Ms Keys"
  run "$command_hook"

  assert_output --partial "--- Hello Ms Keys, hello world!"
  assert_success
}


@test "output hello world with default name when name does not exist" {
  run "$command_hook"

  assert_output --partial "--- Hello Ama, hello world!"
  assert_success
}