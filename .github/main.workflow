workflow "New workflow" {
  on = "push"
  resolves = ["pytest command"]
}

action "pytest command" {
  uses = "cclauss/GitHub-Action-for-pytest@master"
  args = "pytest -h"
}
