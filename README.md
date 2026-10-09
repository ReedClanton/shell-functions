# Shell Functions

[![bash legacy](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Fproject-bash-legacy.json)](https://github.com/ReedClanton/shell-functions/actions)
[![ash](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Fproject-ash.json)](https://github.com/ReedClanton/shell-functions/actions)
[![dash legacy](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Fproject-dash-legacy.json)](https://github.com/ReedClanton/shell-functions/actions)
[![zsh](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Fproject-zsh.json)](https://github.com/ReedClanton/shell-functions/actions)

TODO: Remove the badges below prior to merging, and ensure the ones above work after merging to main.

[![bash legacy](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Ffeature%2F4-github-status-badge-pathfinding%2Fproject-bash-legacy.json)](https://github.com/ReedClanton/shell-functions/actions)
[![ash](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Ffeature%2F4-github-status-badge-pathfinding%2Fproject-ash.json)](https://github.com/ReedClanton/shell-functions/actions)
[![dash legacy](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Ffeature%2F4-github-status-badge-pathfinding%2Fproject-dash-legacy.json)](https://github.com/ReedClanton/shell-functions/actions)
[![zsh](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Ffeature%2F4-github-status-badge-pathfinding%2Fproject-zsh.json)](https://github.com/ReedClanton/shell-functions/actions)

This repository contains a number of shell functions that add functionality to your shell environment. Checkout the [Functions](#functions) section for more details! To use them, see the [Setup](#setup) section.

## Functions

Section titles match the name of each function. Click on the section title to be taken
to the document for that function.

### [`backUp`](backUp/README.md)

Script that copies files and directories from user's home directory to another location.

### [`logging`](logging/README.md)

Produces formatted logs to stdout.

#### `logging` Example Usage

```sh
infoLvl="-i -c=example_script"
readonly infoLvl

logging $infoLvl -m="Requesting input from user..."
printf "Enter number you'd like to count to: "
read userVar
logging $infoLvl -m="User entered: '$userVar'"

for (( i=1; i<=$userVar; i++)); do
	logging $infoLvl -m="$i"
done
```

### [`output`](output/README.md)

Used to add pre-fix, post-fix, headers, and/or footers to message text. Used by log()'s title
options.

### `shellName`

Returns the name of the shell that called the script to `stdout`.

### `verifyInputProvided`

Used by other scripts to ensure that all option(s) passed into it are valid (contain something).
If that's not the case, then the calling scripts doc is produced to std out.

## Setup

Clone this repository, then run `eval "$("$HOME/path/to/shellFunctionSetup.sh")"`. To add this repositories functionality permanently, add that same command to your user's shell configuration.

## Return Codes

The table bellow defines what the meaning of each return value. For details regarding what exactly might have caused a given return code to be returned, check the log produced above the doc that's printed to `stderr` for a log that describes what caused the off nominal code.
Alternatively, enter `<funcationName> --help` for a document that describes how to use the function of interest.

| Code  | Returned When                                                                 | Example                    | Note(s)                                        |
| -----:|:----------------------------------------------------------------------------- |:-------------------------- |:---------------------------------------------- |
| `0`   | <ul><li>Help message is requested and produced.</li><li>Processing is successful.</li></ul> |              |                                                |
| `1`   | POSIX Standard: `Catchall for general errors`                                 | `let "var1 = 1/0"`         | https://tldp.org/LDP/abs/html/exitcodes.html   |
| `2`   | POSIX Standard: `Misuse of shell builtins (according to Bash documentation)`  | `empty_function() {}`      | https://tldp.org/LDP/abs/html/exitcodes.html   |
| `3`   | Failed to execute, but it's not that bad.                                     | Failed to change file, but reverted it. |                                   |
| `4`   | Failed to execute, and it is that bad.                                        | Failed to change file & to revert it. |                                     |
| `126` | POSIX Standard: `Command invoked cannot execute`                              | `/dev/null`                | https://tldp.org/LDP/abs/html/exitcodes.html   |
| `127` | POSIX Standard: `command not found`                                           | `illegal_command`          | https://tldp.org/LDP/abs/html/exitcodes.html   |
| `128` | POSIX Standard: `Invalid argument to exit`                                    | `exit 3.14159`             | https://tldp.org/LDP/abs/html/exitcodes.html   |
| `128+n` | POSIX Standard: `Fatal error signal "n"`                                    | `kill -9 $PPID of script`  | https://tldp.org/LDP/abs/html/exitcodes.html   |
| `130` | POSIX Standard: `Script terminated by Control-C`                              | `Ctl-C`                    | https://tldp.org/LDP/abs/html/exitcodes.html   |
| `131` | Control-C is handled prior to exiting or user chooses to exit through the UI. |                            |                                                |
| `140` | A provided option name is invalid.                                            |                            | Codes in the 14Xs relate to options.           |
| `141` | A provided option value is invalid.                                           |                            |                                                |
| `142` | A required option is not provided.                                            |                            |                                                |
| `151` | A provided argument value is invalid.                                         |                            | Codes in the 15Xs relate to arguments.         |
| `152` | A required argument is not provided.                                          |                            |                                                |
| `160` | Required file doesn't exist.                                                  |                            | Codes in the 16Xs relate to file access.       |
| `161` | Failed to create a file.                                                      |                            |                                                |
| `162` | Failed to remove file.                                                        |                            |                                                |
| `163` | File already exists.                                                          |                            |                                                |
| `164` | File doesn't already exist or can't be found/accessed.                        |                            |                                                |
| `165` | Failed to move/rename file.                                                   |                            |                                                |
| `166` | Failed to copy file.                                                          |                            |                                                |
| `167` | Failed to open file.                                                          |                            |                                                |
| `168` | Failed read from file.                                                        |                            |                                                |
| `169` | Failed to write to file.                                                      |                            |                                                |
| `170` | Required directory doesn't exist.                                             |                            | Codes in the 17Xs relate to directory access.  |
| `171` | Failed to create a directory.                                                 |                            |                                                |
| `172` | Failed to remove directory.                                                   |                            |                                                |
| `173` | Directory already exists.                                                     |                            |                                                |
| `174` | Directory doesn't already exist or can't be found/accessed.                   |                            |                                                |
| `175` | Failed to move/rename directory.                                              |                            |                                                |
| `176` | Failed to copy directory.                                                     |                            |                                                |
| `177` | Failed to enter directory.                                                    |                            |                                                |
| `180` | Code not run from same directory it's located in.                             |                            | Codes in the 18Xs relate to the location code is run from. |
| `181` | Code not run from user's home directory.                                      |                            |                                                |
| `182` | Code not run from the correct directory (generic version of other codes).     |                            |                                                |
| `190` | Code sourced when it shouldn't be.                                            |                            | Codes in the 19Xs relate to how the code is invoked. |
| `191` | Code isn't sourced when it should be.                                         |                            |                                                |
| `192` | Code not run by/as root when it should be.                                    |                            |                                                |
| `193` | Code run as/by root when it shouldn't be.                                     |                            |                                                |
| `194` | Code run by incorrect user.                                                   |                            |                                                |
| `200` | Environment variable(s) set to unsupported value.                             |                            | Codes in the 20Xs relate to environment setup. |
| `201` | Environment variable(s) not set.                                              |                            |                                                |
| `202` | Required script/function not accessible (doesn't exist at expected path, isn't sourced, etc). |            |                                                |
| `203` | Required system commands not accessible.                                      |                            |                                                |
| `209` | Any other environment issue.                                                  |                            |                                                |
| `255` | POSIX Standard: `Exit status out of range`                                    | `exit -1`                  | https://tldp.org/LDP/abs/html/exitcodes.html   |

## Terminology

| Term                           | Meaning                                                         | Reference                               |
|:------------------------------ |:--------------------------------------------------------------  |:--------------------------------------- |
| CUT                            | **C**ode **U**nder **T**est                                     |                                         |
| `Describe`/`ExampleGroup`/`Context` |                                                            | [shellspec-Basic structure](https://github.com/shellspec/shellspec#basic-structure) |
| DOD                            | **D**efinition **O**f **D**one                                  |                                         |
| function readme                | The `README.md` file of the function named. Stored in the same directory as the function is. | Ex: [logging/README.md](logging/README.md) |
| project readme                 | This `README.md`.                                               | [project readme](README.md)             |
| `stderr`                       | Output stream that error data is published to.                  | Google it.                              |
| `stdout`                       | Output stream that most return values are published to.         | Google it.                              |

## Shell Style Guide

### Directory Structure

```text
<PROJECT-ROOT> directory
├─ .github                       				Contains files used by GitHub. This could include
|	|											GitHub issue or peer review templates, or pipeline
|	|											related items among others. Note that only
|	|											contents from the `main` branch will be used
|	|											by GitHub.
|	|
│	├─ ISSUE_TEMPLATE							Contains project's GitHub issue templates.
|	|	├─ issueTemplate.md
|	|		:
|	|
|	├─ PULL_REQUEST_TEMPLATE					Contains project's GitHub pull request templates.
|	|	├─ pullRequestTemplate.md
|	|		:
|	|
|	├─ actions									Contains all actions that can be called/performed
|	|	|										by a GitHub workflow (pipeline). Actions are
|	|	|										mainly used to define actions that are taken by
|	|	|										multiple workflows.
|	|	|
|	|	├─ description-of-what-action-does/		Directory title identifies what the action does,
|	|	|	|									contain no spaces or capital letters, and use `-`
|	|	|	|									to separate words.
|	|	|	|
|	|	|	├─ action.yml						Tells GitHub runner what should be done.
|	|	|	|
|	|	|	├─ otherSupportFiles				One example would be a `Dockerfile` used by the
|	|	|	|	:								`action.yml` file.
|	|	|	:
|	├─ workflows/								Contains `.yml` file that tells GitHub what should
|	|	|										be done by the runner (pipeline) and when. For
|	|	|										example, what unit tests should be run and when
|	|	|										should they be triggered. These files use the
|	|	|										contents of the actions directory to allow for
|	|	|										re-use of actions across workflows.
|	|	|
|	|	├─ description-of-what-workflow-does.yml	Title identifies what the action does,
|	|	|										contains no spaces or capital letters, and use `-`
|	|	:										to separate words.
|	|
├─ docs/										Contains resources, like photos, used by the
│	:											`README.md` file in this directory.
│
|─ someFunctionName/							Contains a shell function of the same name.
|	|
|	|─ util										Contains code used by the function, but not by
|	|											external functions. The code within the directory
|	|											isn't necessarily callable by the user.
|	|
|	|─ README.md								Contains documentation for the shell function,
|	|											including architectural diagrams.
|	|
|	|─ someFunctionName.sh						File contains a shell function named
|												`someFunctionName()`.
|
├─ util/										Contains simple functions that are used across
|	|											multiple other functions.
|	|
│	├─ someUtilFunctionName/					Directory name must match function name.
|	|	|
|	|	├─ docs/								Contains resources, like photos, used by the
|	|	|										`README.md` in this directory.
|	|	|
|	|	├─ util/								Same as other util directories.
|	|	|										Not normally needed.
|	|	|
|	|	├─ README.md							Document that covers this function.
|	|	|
│	│	├─ someUtilFunctionName.sh				File name must match function name.
|	:
│
├─ spec/ 										Contains ShellSpec tests and configuration.
│	├─ support/
|	|	|─ bin									Contains files that allow for shell calls that
|	|		:									wouldn't normally be passed through to the CUT
|	|											to be made available.
│	│
│	├─ unit/									Contains one directory for each shell function
|	|	|										that tests exist for and is named the same as the
|	|	|										function. Contains all tests of the shell function
|	|	|										and the code that supports it.
|	|	|
│	│	├─ someFunctionName/					Contains all tests of the shell function and the
|	|	|	|									code that supports it. The directory name must
|	|	|	|									match the name of the function being tested.
|	|	|	|
|	|	|	├─ util/							If the CUT has a util directory, then this
|	|	|	|									directory will contain tests of that code.
|	|	|	|
│	│	|	├─ outerDescribeTitle_innerDescribeTitle_spec.sh	If you look at the contents of
|	|	|	|									each test file, you'll see a pattern. The top
|	|	|	|									level `Describe` will always have the title of the
|	|	|	|									function being tested. The `Describe` at the next
|	|	|	|									level down will have a description that specifies
|	|	|	|									what type of functionality is being tested. For
|	|	|	|									example, if the function under test has a option
|	|	|	|									that must be provided, the the title of this
|	|	|	|									`Describe` would be `requiredOption`. As the
|	|	|	|									`Describe` levels get deeper, the descriptions get
|	|	|	|									more specific. The title of the test file should
|	|	|	|									match the description of each `Describe` within the
|	|	|	|									file. Once the file name is unique and descriptive,
|	|	|	|									you've gone far enough.
|	|	|	|
|	|	|	├─ README.md						Contains testing implementation details, including
|	|	:										the unit testing style guide.
|	|
│	├─ README.md								Describes goals and general approach to testing.
│	│
|	|─ spec_helper.sh							Contains helper functions used to setup for tests.
```

### Function Names

Function names must start with a lowercase letter, then each word after should start with an uppercase letter.

### Function Doc

The function doc also serves as the help doc and is printed when you call the function with `--help`/`-h`.

## Unit Testing

There is an extensive suite of unit tests that utilizes the [ShellSpec](https://shellspec.info/) framework. For more, see the [unit testing `README.md` file](spec/README.md).

## GitHub Actions (Pipeline)

Tests of this repository are run by actions (what GitHub calls a pipeline). For more information, see the [`README.md` in the `.github` directory](.github/README.md).

## History

While this repository is relatively young, most of the code was written in 2023 in an old repository of mine called `shell_base`.
