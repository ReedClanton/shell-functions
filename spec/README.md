# Testing

The [`shellspec`](https://github.com/shellspec/shellspec#testing-shell-functions) library is use for testing this repo.

## Unit Test(s)

The `./unit/` directory and its child directories contain all unit tests of this repository's code. For generic info regarding testing.

### Testing Goals

Unit tests should:

- Test the *smallest* possible unit of code in a *single* way.
- Test the *smallest* possible unit of code in *every* way.
- *All* code *must* have *100%* coverage:
    - This includes things like files that define constants.
- Ensure *no code outside* of the CUT (Code Under Test) is executed.
- Environment changes should *never break* tests:
    - For example, changing the value of a value in a constants file should only cause tests to fail when the new value is invalid.
- Functionality changes *shale _always_* break tests.
- Implementation changes should *not* break tests... ideally.

### Testing Structure and Approach

For details regarding the structure and style guide of unit tests, see the [unit test `README.md` file](unit/README.md).

## Functional Test(s)

Functional tests provide limited value because all they would gain would be:

- Additional tests of `shellFunctionSetup.sh`:
    - Unit tests already exist of `shellFunctionSetup.sh` and given what the script does, unit tests and functional tests are identical.
- Coverage of `main.sh` scripts:
    - `main.sh` files primarily represent the import section at the top of most programming language files.
        - Writing tests for them represents a surprising amount of work.
        - Provides little value.
        - Bugs it would prevent are easily found and quick to fix.
    - In short, fixing them is easier than writing and maintaining unit or functional tests of them.

### Functional Test Conclusion

Given the high quality and coverage of unit tests, there is insufficient value in adding functional tests.
