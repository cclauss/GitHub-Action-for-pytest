# GitHub Action for running Flake8 commands

Each time that new code is pushed into your repo, you can have a [Flake8](http://flake8.pycqa.org) command automatically run.

Example workflow:
* Put the following text into a file named `.github/main.workflow` in your repo):
```hcl
workflow "New workflow" {
  on = "push"
  resolves = ["Flake8 command"]
}

action "Flake8 command" {
  uses = "cclauss/GitHub-Action-for-Flake8@master"
  args = "flake8 . --max-line-length=88"
}
```

Or to use Flake8 to find Python 3 syntax errors and undefined names, try:

$ __flake8 . --count --select=E901,E999,F821,F822,F823 --show-source --statistics__

__E901,E999,F821,F822,F823__ are the "_showstopper_" [flake8](http://flake8.pycqa.org) issues that can halt the runtime with a SyntaxError, NameError, etc. These 5 are different from most other flake8 issues which are merely "style violations" -- useful for readability but they do not effect runtime safety.
* F821: undefined name `name`
* F822: undefined name `name` in `__all__`
* F823: local variable name referenced before assignment
* E901: SyntaxError or IndentationError
* E999: SyntaxError -- failed to compile a file into an Abstract Syntax Tree
