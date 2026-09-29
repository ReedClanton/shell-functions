# Description of Changes

<!-- Add a description of the changes you made. -->

## The Basics

These should be checked <ins>*immediately*</ins> upon PR (Peer Review) **creation**:

- [ ] The name of the branch is:
    - `<feature/bug>/<issueId>-<issue-title-with-dashes-between-and-no-capitalization>`
- [ ] The title of this PR is:
    - `<issueId> | <Issue Title>`
- [ ] Changes are being merged into the correct branch (normally `main`).
- [ ] PR has been assigned to you.
- [ ] Labels have been filled out:
    - Normally, they reflect the labels of the issue the PR is for, but verify this, and if different, update the issue's labels.
- [ ] @ReedClanton has been added as a reviewer.
- [ ] PR has been marked as `Draft` when not ready for review.

## Check Before Moving Out of `Draft`

- For the GitHub issue associated with this work:
    - [ ] *Everything* from the **Details** section has been addressed.
    - [ ] *All* artifact(s) listed in the **Artifact(s)** section exist.
    - [ ] The **Scope** section has been adhered to:
        - If not, provide a justification for this in the [Description of Changes](#description-of-changes) section.
    - [ ] Checked for *new* GitHub issue comments and addressed.
    - [ ] Verified *existing* GitHub issue comments have been addressed.
- *All* code changes, *including* unit tests:
    - [ ] Adhere to the style guide:
        - Code style guide is located in the [`README.md` at the root of the repository](https://github.com/ReedClanton/shell-functions/blob/main/README.md#shell-style-guide).
        - Test style guide is located in the [`README.md` at the root of the unit testing directory](https://github.com/ReedClanton/shell-functions/blob/main/spec/unit/README.md).
    - [ ] Executes successfully locally.
    - [ ] Style checker executes successfully by the GitHub runner (pipeline).
- Documentation:
    - [ ] `README.md` of *_all_ code touched*, *including* unit tests:
        - [ ] Has been read to asses what additions and updates should be made.
        - [ ] Has been updated.
    - [ ] Script/Function/Help doc of *_all_ code touched* (if you touch the file, you own all documentation updates):
        - [ ] Has been read to asses what additions and updates should be made.
        - [ ] Has been updated.
- Testing:
    - New code:
        - [ ] Has 100% Unit test coverage (other than `main.sh` files).
        - [ ] Is run by a GitHub workflow (the pipeline).
        - [ ] Runs successfully by GitHub runner (the pipeline).
        - [ ] New unit tests are being run by GitHub actions (pipeline).
    - Coverage:
        - [ ] Unit test coverage of *_all_ code touched* has **not** dropped.
        - [ ] 100% coverage exists for *_all_ added code*.
        - [ ] Checked if unit test coverage has increased, if so:
            - [ ] Update GitHub workflows `.yml` files that run the unit tests in the pipeline to increase the minimum coverage level required for pipeline success.
    - All tests (unit, functional, or otherwise) run successfully:
        - [ ] By GitHub runner (the pipeline).
        - [ ] Locally.
    - *If* new environment variable(s) were added:
        - [ ] Environment variables are unset by the `spec_helper_precheck()` function in `<repoRoot>/spec/spec_helper.sh`.
        - [ ] *All* unit tests of the code that uses them set or unset them at the top or within the test.
        - [ ] 100% Unit test coverage of environment variable(s).

## Check Before Each Push

- For the GitHub issue associated with this work:
    - [ ] The **Scope** section is being adhered to.
- Documentation:
    - [ ] `README.md` of *_all_ code touched*, *including* unit tests:
        - [ ] Has been read to asses what additions and updates should be made.
        - [ ] Has been updated.
    - [ ] Script/Function/Help doc of *_all_ code touched* (if you touch the file, you own all documentation updates):
        - [ ] Has been read to asses what additions and updates should be made.
        - [ ] Has been updated.
- Testing:
    - New code:
        - [ ] Has 100% Unit test coverage (other than `main.sh` files).
        - [ ] Is run by a GitHub workflow (the pipeline).
        - [ ] Runs successfully by GitHub runner (the pipeline).
        - [ ] New unit tests are being run by GitHub actions (pipeline).
    - Coverage:
        - [ ] Unit test coverage of *_all_ code touched* has **not** dropped.
        - [ ] 100% coverage exists for *_all_ added code*.
        - [ ] Checked if unit test coverage has increased, if so:
            - [ ] Update GitHub workflows `.yml` files that run the unit tests in the pipeline to increase the minimum coverage level required for pipeline success.
    - All tests (unit, functional, or otherwise) run successfully:
        - [ ] By GitHub runner (the pipeline).
        - [ ] Locally.
    - *If* new environment variable(s) were added:
        - [ ] Environment variables are unset by the `spec_helper_precheck()` function in `<repoRoot>/spec/spec_helper.sh`.
        - [ ] *All* unit tests of the code that uses them set or unset them at the top or within the test.
        - [ ] 100% Unit test coverage of environment variable(s).

## Check After Final Push

- For the GitHub issue associated with this work:
    - [ ] *Everything* from the **Details** section has been addressed.
    - [ ] *All* artifact(s) listed in the **Artifact(s)** section exist.
    - [ ] The **Scope** section has been adhered to:
        - If not, provide a justification for this in the [Description of Changes](#description-of-changes) section.
    - [ ] Checked for *new* GitHub issue comments and addressed.
    - [ ] Verified *existing* GitHub issue comments have been addressed.
- *All* code changes, *including* unit tests:
    - [ ] Adhere to the style guide:
        - Code style guide is located in the [`README.md` at the root of the repository](https://github.com/ReedClanton/shell-functions/blob/main/README.md#shell-style-guide).
        - Test style guide is located in the [`README.md` at the root of the unit testing directory](https://github.com/ReedClanton/shell-functions/blob/main/spec/unit/README.md).
    - [ ] Executes successfully locally.
    - [ ] Style checker executes successfully by the GitHub runner (pipeline).
- Documentation:
    - [ ] `README.md` of *_all_ code touched*, *including* unit tests:
        - [ ] Has been read to asses what additions and updates should be made.
        - [ ] Has been updated.
    - [ ] Script/Function/Help doc of *_all_ code touched* (if you touch the file, you own all documentation updates):
        - [ ] Has been read to asses what additions and updates should be made.
        - [ ] Has been updated.
- Testing:
    - New code:
        - [ ] Has 100% Unit test coverage (other than `main.sh` files).
        - [ ] Is run by a GitHub workflow (the pipeline).
        - [ ] Runs successfully by GitHub runner (the pipeline).
        - [ ] New unit tests are being run by GitHub actions (pipeline).
    - Coverage:
        - [ ] Unit test coverage of *_all_ code touched* has **not** dropped.
        - [ ] 100% coverage exists for *_all_ added code*.
        - [ ] Checked if unit test coverage has increased, if so:
            - [ ] Update GitHub workflows `.yml` files that run the unit tests in the pipeline to increase the minimum coverage level required for pipeline success.
    - All tests (unit, functional, or otherwise) run successfully:
        - [ ] By GitHub runner (the pipeline).
        - [ ] Locally.
    - *If* new environment variable(s) were added:
        - [ ] Environment variables are unset by the `spec_helper_precheck()` function in `<repoRoot>/spec/spec_helper.sh`.
        - [ ] *All* unit tests of the code that uses them set or unset them at the top or within the test.
        - [ ] 100% Unit test coverage of environment variable(s).
- [ ] PR is *not* marked as `Draft`.
