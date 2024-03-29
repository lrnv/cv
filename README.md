## Output link

The permalink for the resume is https://github.com/lrnv/cv/releases/download/latest/Laverny_Oskar_CV.pdf

## An automatic CV with latex, github actions, gitinfo2, etc... 

Features: 
- Hand-written template to feat my needs. (not `modernCV` anymore)
- Automatic sorting of references with keywords. 
- Automatic `gitinfo2` watermark
- Automatic compilation on Github actions with a permalink to the last version.

Some sources that inspired me : [here](https://github.com/Qkessler/cv), [there](https://github.com/marvinpinto/actions/blob/master/.github/workflows/pre-release.yml) and [there](https://github.com/rbarazzutti/gitinfo2-latexmk). See also [this blog post](https://www.actuarial.science/post/automatic-latex-resume-with-github-action-and-gitinfo2-watermark/) and [this one](https://www.actuarial.science/post/using-git-and-github-for-latex-writting/).

## Workflow

- Modify the .tex, add bib entries (with keywords to get them included)
- If you add a new keyword you need to inform the .tex about it. 
- Simply push update and wait for CI compilation to update the permalink.

You are free to check out the code and take it for yourself if you want.
