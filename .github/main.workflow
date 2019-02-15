workflow "on push" {
  on = "push"
  resolves = ["GitHub Action for pytest"]
}

action "GitHub Action for pytest" {
  uses = "cclauss/GitHub-Action-for-pytest@master"
  args = "pytest -h"
}
