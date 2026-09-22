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

- [ ] All tests (unit, functional, or otherwise) added are being run by the pipeline.
- [ ] Pipeline runs successfully.
- [ ] PR is *not* marked as `Draft`.
