# The Basics

These should be checked <ins>*immediately*</ins> upon PR (Peer Review) **creation**:

- [ ] The name of the branch is:
    - `<issueId>-<issue-title-with-dashes-between-and-no-capitalization>`
- [ ] The title of this PR is:
    - `<issueId> | <Issue Title>`
- [ ] Changes are being merged into the correct branch (normally `main`).
- [ ] @ReedClanton has been added as a reviewer.
- [ ] PR has been marked as `WIP` when not ready for review.

## Check Before Moving Out of `WIP`

The following sections from the issue this work is associated with have been completed/adhered to:

- [ ] All artifact(s) listed in the **Artifact(s)** section exist.
- [ ] The **Scope** section has been adhered to.
- [ ] *Everything* from the **Details** section has been addressed.

## Check Before Each Push

- [ ] The `README.md` file of *_all_ code touched* has been reviewed *and* updated.
- [ ] The script/function doc of *_all_ code touched* has been reviewed *and* updated.
- [ ] Unit test coverage of *all* files touched has not dropped.
- [ ] All tests (unit, functional, or otherwise) run successfully locally.

## Check After Final Push

- [ ] All tests (unit, functional, or otherwise) added are bing run by the pipeline.
- [ ] Pipeline runs successfully.
- [ ] PR is *not* marked as `WIP`.
