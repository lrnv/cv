## Output link

https://github.com/lrnv/cv/releases/download/latest/Laverny_Oskar_CV.pdf

## An automatic CV with latex, github actions, gitinfo, moderncv & everything you might need. 

Features: 
- The modernCV template was manually modified to feat my needs.
- Especially automatic formating of references 'correctly'. 
- the plainurlrev.bst file was also manually modified 
- The bib management and counting of references is automatic, ran through github action
- The gitinfo2 script is also ran directly from github actions. 
- The github action releases the pdf file for everyone to look at: the link is always updated.

Some sources that inspired me : 
- https://github.com/Qkessler/cv for evenutally making automatic releases of the cv. 
- https://github.com/marvinpinto/actions/blob/master/.github/workflows/pre-release.yml also
- https://github.com/rbarazzutti/gitinfo2-latexmk

## Workflow

- You may add another `bib/*.bib` file that would constitute another section in the publications lists, with automatic ocunting of references. In this case **do not forget to add the `\EN*` macro in the main tex file**
- You may add more bib entries in the bib folder, or move some around
- You may change the content of the main file, or any file
- Just commit, push to github and it will run the workflow to produce the result
- get your result there : https://github.com/lrnv/cv/releases/download/latest/Laverny_Oskar_CV.pdf


You are free to check out the code and take it for yourself if you want, no problem. 