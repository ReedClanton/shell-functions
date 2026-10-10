# `output()`'s Utilities

These are the shell functions, constants, variables, and import logic that are utilized by the `output()` function. These are not intended to be called from outside `<repoRoot>/output/`. If something from here does need to be used outside of that scope, then it should be moved to `<repoRoot>/util/`.

## `createHeaderFooter()`

[![bash legacy](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Foutput%2Futil%2FcreateHeaderFooter-bash_legacy.json)](https://github.com/ReedClanton/shell-functions/actions/workflows/test-output-util-createHeaderFooter.yml?query=branch%3Amain)
[![ash](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Foutput%2Futil%2FcreateHeaderFooter-ash.json)](https://github.com/ReedClanton/shell-functions/actions/workflows/test-output-util-createHeaderFooter.yml?query=branch%3Amain)
[![dash legacy](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Foutput%2Futil%2FcreateHeaderFooter-dash_legacy.json)](https://github.com/ReedClanton/shell-functions/actions/workflows/test-output-util-createHeaderFooter.yml?query=branch%3Amain)
[![zsh legacy](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Foutput%2Futil%2FcreateHeaderFooter-zsh_legacy.json)](https://github.com/ReedClanton/shell-functions/actions/workflows/test-output-util-createHeaderFooter.yml?query=branch%3Amain)

Based on the text provided, it generates the header and footer that `output()` will ultimately include in the value it returns.

## `constants.sh`

[![bash legacy](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Foutput%2Futil%2Fconstants-bash_legacy.json)](https://github.com/ReedClanton/shell-functions/actions/workflows/test-output-util-constants.yml?query=branch%3Amain)
[![ash](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Foutput%2Futil%2Fconstants-ash.json)](https://github.com/ReedClanton/shell-functions/actions/workflows/test-output-util-constants.yml?query=branch%3Amain)
[![dash legacy](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Foutput%2Futil%2Fconstants-dash_legacy.json)](https://github.com/ReedClanton/shell-functions/actions/workflows/test-output-util-constants.yml?query=branch%3Amain)
[![zsh legacy](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Foutput%2Futil%2Fconstants-zsh_legacy.json)](https://github.com/ReedClanton/shell-functions/actions/workflows/test-output-util-constants.yml?query=branch%3Amain)

Tracks the values that control `output()`'s behavior. These won't be changed often, but are still broken out so the are easier to find and document. Open the file for more information.

## `main.sh`

This is a simple script that sources everything that `output()` needs. Think of it sorta like a `.h` file in C.
