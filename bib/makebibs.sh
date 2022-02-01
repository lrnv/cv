#!/bin/bash
echo "\usepackage{multibib}" > bib/bibcounters.tex
echo "\newcites{%" >> bib/bibcounters.tex

i=0
for filename in bib/*.bib; do
    echo $filename: `cat $filename | grep @ -c`
    i=$(($i+1))
    name="${filename##*/}"
    name=$(echo "$name" | sed 's/\.[^.]*$//')
    echo $name,% >> bib/bibcounters.tex
done
truncate -s-3 bib/bibcounters.tex
echo '%'>>bib/bibcounters.tex
echo '}{%'>>bib/bibcounters.tex
for ((j=1; j<=i; j++))
do
    echo {Name $j},% >> bib/bibcounters.tex
done
truncate -s-3 bib/bibcounters.tex
echo '}'>>bib/bibcounters.tex
echo ''>>bib/bibcounters.tex

# this shell script has goal of writting the bibcounters file. 
for filename in bib/*.bib; do
    N=$(cat $filename | grep @ -c)
    name="${filename##*/}"
    name=$(echo "$name" | sed 's/\.[^.]*$//')

    read firstline < $filename
    # secondline=$(head -2 $filename | tail -1)
    # echo $firstline
    # echo $secondline
    outputname=$(echo "$firstline" | cut -d "=" -f2)

    if (($N != 0)); then
        # echo \\def\\N$name\{\} >> bib/bibcounters.tex
        echo \\newcommand\{\\EN$name\}\{ >> bib/bibcounters.tex
        # echo \\if\\N$name\0 >>bib/bibcounters.tex
        # echo \\else >>bib/bibcounters.tex
        echo \\subsection\{$outputname \($N\)\} >>bib/bibcounters.tex
        echo \\nocite$name\{\*\} >>bib/bibcounters.tex
        echo \\bibliographystyle$name\{plainurlrev\} >>bib/bibcounters.tex
        echo \\bibliography$name\{bib\/$name\} >>bib/bibcounters.tex
        # echo \\fi >>bib/bibcounters.tex
        echo \} >>bib/bibcounters.tex
        echo "" >>bib/bibcounters.tex
    else
        echo \\newcommand\{\\EN$name\}\{\} >> bib/bibcounters.tex
        echo "" >>bib/bibcounters.tex
    fi


done

