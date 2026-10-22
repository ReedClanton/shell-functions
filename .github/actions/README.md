# GitHub Actions

GitHub actions are `.yml` files that do something on a GitHub runner. A runner is the machine that the pipeline is run on. `action.yml` files are like functions. They define something that is done multiple times.

Actions are called by workflows. For more information about GitHub workflows, see the workflow [README.md](../workflows/README.md) file.

## `plan-ci`

This decides what workflows get run depending on what the trigger was. Once this list of workflows to run is created, it's given to [`ci.yml`](../workflows/ci.yml) so they can be run. For a full description of what gets run when, see the [What Runs When](../workflows/README.md#what-runs-when) section of the workflows README.

## TODO: Other Actions
