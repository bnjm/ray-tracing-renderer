workflow "test" {
  on = "push"
}

action "install" {
  uses = "docker://node:10.15.3"
  args = "npm install"
}

action "test" {
  uses = "docker://node:10.15.3"
  args = "npm test"
  needs = ["install"]
}
