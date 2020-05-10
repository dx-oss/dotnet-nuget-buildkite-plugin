#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

# https://github.com/sstephenson/bats

@test "Build a dotnet nuget package" {
  run "$PWD/hooks/command"

  assert_success
}