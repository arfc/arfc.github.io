---
layout: manual
title: Pull Requests
subtitle: "The #1 Collaboration Tool"
permalink: /manual/guides/pull_requests
---

# Making a Pull Request

A Pull Request (PR) merges the changes in a branch of a repository
to the main branch. This means the main branch has all of the updates
that need to get approved before they're implemented.
For the basics on how to create a PR, GitHub has a guide available
[here](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).

Most of the pull requests done in the ARFC group are from a feature branch 
(not the main branch)
in a personal fork to the main branch in the ARFC fork of a repository. 
PRs made in the ARFC organization should:

- Have GitHub Labels (Difficulty:1-Beginner, Status:1-New, etc.)
- Have a GitHub Project (Meta, Fuel Cycles, etc.)
- Have a description in GitHub
- List requested reviews (usually one or two, consider if more than
  two is really necessary for your request)
- Link to an issue
- Be small (achieve one thing; "atomic")


# Reviewing a Pull Request

 [Cyclus PR Review Recommendations](https://fuelcycle.org/kernel/pr_review.html)

 [Common mistakes and errors](https://blog.scottnonnenberg.com/top-ten-pull-request-review-mistakes/)

Below is a checklist the PR reviewer should
consider before approving a pull request. As a reminder, the
[ARFC Code of Conduct](http://arfc.github.io/manual/coc) still applies
in pull request reviews. Reviews should be both thorough and
respectful. Comments can be made and changes can be requested for a specific 
line or lines and the reviewer can even write their own code to improve the 
committed files using the `+/-` button. 

If you are about to review a PR, consider copying and pasting
this checklist into your review comment and checking the boxes
as you go along.

```markdown
- [ ] Read the PR description
- [ ] Read through all the changes, considering the following questions.
  - [ ] Is there anything you can praise about this PR? Start with
        praise.
  - [ ] Are variable names brief but descriptive?
  - [ ] Are new/changed functions no longer than a paragraph?
  - [ ] Do all function parameters have default values where appropriate?
  - [ ] Is the code clear and clean? (see Robert C. Martin's
        [Clean Code](https://i-share-uiu.primo.exlibrisgroup.com/discovery/fulldisplay?docid=alma99944155312205899&context=L&vid=01CARLI_UIU:CARLI_UIU&tab=LibraryCatalog&lang=en))
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
  - [ ] Is the PR free of random cruft (built files, `.swp` files,
        etc.)?
  - [ ] Do all files in the PR belong in the repository?
  - [ ] If the PR deletes files, is this appropriate?
  - [ ] If the PR adds files or data, are these new files compatible
        with the repository license?
  - [ ] Make a review, leaving kind comments and suggesting changes
        where needed (to resolve the above).
  - [ ] Has the author resolved all of the comments and suggestions
        in your review?
- [ ] When you approve of the PR, merge and close it.
- [ ] Does this PR close an issue? If so, be sure to descriptively
      close this issue when the PR is merged
- [ ] Thank the author for their contribution.
```

# Responding to Pull Request Reviews

GitHub has posted some excellent 
[advice on responding to pull request feedback](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/incorporating-feedback-in-your-pull-request).
Below are the basic steps. 

```markdown
- [ ] Read the review comments.  These can include general comments on the 
  technical substance, documentation, performance, clarity, reproducibility, 
  coding style, and even the formatting of the submission.
- [ ] Some comments contain commit suggestions. These comments can either be 
  discussed in the comment box or committed directly from the review with the 
  `commit suggestion` button. With this button, the suggested changes are 
  committed and pushed immediately to the PR branch, which makes incorporating 
  suggested changes faster.
- [ ] For other comments, discuss the suggestion in the comment box and either 
  make commits that directly satisfy it or eventually resolve it in some other 
  way.
- [ ] As you make commits, push them to your pull request branch.
- [ ] All reviewer comments should be incorporated, responded to, handled, and/or 
  discussed further.  Do not leave comments un-handled.
- [ ] Once you have handled all comments, it's wise to alert the reviewers that 
  the PR is ready to be re-reviewed. It's best practice to make a comment in 
  the PR and to re-request a review. To request a fresh review from a reviewer, 
  in the sidebar of the Conversation tab, click the refresh icon.
- [ ] Once the PR has been approved by at least one reviewer, a reviewer will 
  merge the changes and the PR will be closed.
```
