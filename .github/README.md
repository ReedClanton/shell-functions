# GitHub

This directory contains files that are used by this project's GitHub repository.

## /actions/

Actions are run used by [workflows](#workflows). Each represents an action that is done multiple times. In short, they are like functions. Rather than hard coding the same action over and over, they serve as a means of re-using code. They are not run directly by GitHub's runners, rather [workflows(#workflows) call them and this is what triggers them to be run by the runner.

## /badge-dependencies

Badges are the little icons you see in the rendered `README.md` files across this project that reflect the current state of the project. These badges inherit from one another. For example, there is a badge that reflects if `output()`'s `createHeaderFooter()` function is supported by the z shell. That status is then incorporated into `output()` `zsh` badge. Finally, all `zsh` badges from across the project are reflected in the `zsh` badge in the `README.md` file at the root of the project.

For example, if there is one bit of code that doesn't run on `zsh`, then the `zsh` badge in the `README.md` at the root of the project would reflect that. It will only be all <span style="color: green;">green</span> if *all* tested code in the repository passed all tests with no skips.

## /ISSUE_TEMPLATE/

This directory contains the templates used when creating GitHub issues.

## /PULL_REQUEST_TEMPLATE/

This directory contains templates for pull request. This is what fills out the description of PRs automatically.

## /workflows

This directory is what contains the `.yml` files that dictate what the GitHub runners (pipeline) does. These can do just about anything you can think of, but mine mostly just run tests and style checks.
