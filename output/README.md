# `output()`

[![output(): bash legacy](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Foutput%2Foutput-bash_legacy.json)](https://github.com/ReedClanton/shell-functions/actions/workflows/test-output.yml?query=branch%3Amain)
[![output(): ash](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Foutput%2Foutput-ash.json)](https://github.com/ReedClanton/shell-functions/actions/workflows/test-output.yml?query=branch%3Amain)
[![output(): dash oldest](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Foutput%2Foutput-dash-oldest.json)](https://github.com/ReedClanton/shell-functions/actions/workflows/test-output.yml?query=branch%3Amain)
[![output(): zsh legacy](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FReedClanton%2Fshell-functions%2Fbadges%2Fmain%2Foutput%2Foutput-zsh_legacy.json)](https://github.com/ReedClanton/shell-functions/actions/workflows/test-output.yml?query=branch%3Amain)

The purpose of this function is to add formatting to message text. This could be a prefix, postfix, header, or footer. These can also be combined and you can set custom multi-character formatting characters.

As an example, you could set the formatting character to `!#*@` with `--formatting-character="!#*@"`, add a prefix, postfix, header, and footer with `--pretty`, and some message text like `Hello World` with `--msg="Hello World"` and get the following. The full command would be `output --formatting-character='!#*@' --pretty --msg='Hello World'`:

```plaintext
 !#*@!#*@!#*@!#*@!#*
!#*@ Hello World !#*@
 !#*@!#*@!#*@!#*@!#*
```

## Architecture

![Output_Architecture_Diagram](../docs/diagrams/output.png?raw=true)
