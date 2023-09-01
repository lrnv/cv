## Output links

https://github.com/lrnv/cv/releases/download/latest/Laverny_Oskar_CV.pdf

## An automatic CV with latex, github actions, gitinfo2, etc... 

Features: 
- The `modernCV` template was manually modified to feat my needs. ( just ditched it !)
- Automatic sorting of references into predefined categories. 
- Automatic `gitinfo2` script run directly from github actions. 
- The github action releases the pdf file for everyone to look at: the link is always updated.

Some sources that inspired me : [1](https://github.com/Qkessler/cv), [2](https://github.com/marvinpinto/actions/blob/master/.github/workflows/pre-release.yml) and [3](https://github.com/rbarazzutti/gitinfo2-latexmk).

## Workflow


- If you add a new keyword in the bib file, add the corresponding bloc in the .tex to output it correctly. 
- Just commit, push to github and it will run the workflow to produce the result and update the output link.


You are free to check out the code and take it for yourself if you want.
