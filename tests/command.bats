#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

# https://github.com/sstephenson/bats

@test "Build a dotnet nuget package" {
  stub buildkite-agent "annotate : echo $ver"
  stub docker "run : echo $ver"

  run "$PWD/hooks/command"

  #assert_output --partial "$ver"
  assert_success

  unstub docker
  #unstub buildkite-agent
}