# GitHub Workflows

GitHub workflows are `.yml` files that dictate what the GitHub runner does. They control what the pipeline does. They may run a command, or set of commands, directly, or call a GitHub `action.yml` to do something (similar to calling a function).

Note that there exists a list of terms in the [Terminology](../../README.md#terminology) section of the `README.md` file at the root of this project.

## What Runs When

- *All* workflows shale run:
    - When an existing PR is brought out of the `draft` state.
    - When a new PR is created and it's *not* created in the `draft` state.
    - *Before* a PR may be merged, regardless of what branch the PR is being merged to:
        - PR merging fails if any workflow fails.
- When the CUT, tests of CUT, or pipeline configuration related to a workflow are changed in any way by any commit in a push, the related workflows shale run.
- When *any* workflow fails, it should continue to be triggered when any other workflow is triggered until it's successful.

### `ci.yml`

Is the only workflow GitHub triggers automatically. It runs on every push, tag, PR event and manual run, asks the plan action what needs to run, calls those workflows, publishes the badges, and reports one pass or fail result that gates merges.

It's important to understand how `ci.yml` relates to the [`plan-ci/action.yml`](../action/plan-ci/action.yml) file. See the GitHub [actions `README.md`](../actions/README.md) for this information.

## Controlling What Runs When

TODO
