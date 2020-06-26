---
layout: manual
title: Pull Requests
subtitle: "What to check in a PR Review"
permalink: /manual/guides/pullrequests
---

# Reviewing a Pull Request

- [Recommendations from Cyclus PRs](https://fuelcycle.org/kernel/pr_review.html)

- [Common mistakes and errors](https://blog.scottnonnenberg.com/top-ten-pull-request-review-mistakes/)

Below is a checklist that lists many aspects that reviews should
consider before approving a pull request. As a reminder, the
[ARFC Code of Conduct](http://arfc.github.io/manual/coc) still applies
in pull request reviews. It's important to practice proper reviewing
while maintaining respect.

```markdown
- [ ] Read the PR description
- [ ] Read through all the changes, considering the following questions.
  - [ ] Is there anything you can praise about this PR? Start with
        praise.
  - [ ] Are variable names brief but descriptive?
  - [ ] Are new/changed functions no longer than a paragraph?
  - [ ] Do all function parameters have default values where appropriate?
  - [ ] Is the code clear and clean? (see Robert C. Martin's
        [Clean Code](https://www.investigatii.md/uploads/resurse/Clean_Code.pdf))
  - [ ] Is there enough documentation?
  - [ ] Does the programming style meet the requirements of the
        repository ([PEP8](https://www.python.org/dev/peps/pep-0008/) for python,
        [google C++ style guide](https://google.github.io/styleguide/cppguide.html), etc.)
  - [ ] If a new feature has been added, or a bug fixed, has a test been
        added to confirm good behavior?
  - [ ] Does the test actually test the new/changed functionality?
  - [ ] Does the test successfully test edge cases?
  - [ ] Does the test successfully test corner cases?
  - [ ] If the repository has continuous integration: does the PR pass
        the tests?
  - [ ] If there is no continuous integration, check out the branch
        locally, build, and run the tests.
  - [ ] Do the tests pass on your machine?
  - [ ] Is the PR free of random cruft (built files, SWP files, etc.)?
  - [ ] Do all files in the PR belong in the repository?
  - [ ] If the PR deletes files, is this appropriate?
  - [ ] If the PR adds files or data, are these new files compatible
        with the repository license?
  - [ ] Make a review, leaving kind comments and suggesting changes
        where needed (to resolve the above).
- [ ] When you approve of the PR, merge and close it.
- [ ] Does this PR close an issue? If so, be sure to descriptively
      close this issue when the PR is merged
- [ ] Thank the author for their contribution.
```