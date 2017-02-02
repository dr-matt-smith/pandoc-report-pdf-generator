# pandoc-report-pdf-generator

This is a repository containing markdown files, and images, and composer.json with settings to generate a project PDF report.

It is based on the 'pandoc' document converstion system, which works for Windows, Mac and Linux via a simple intsallation:

Learn about Pandoc here:
- [http://pandoc.org/](http://pandoc.org/)

Learn how to install Pandoc here:
- [http://pandoc.org/installing.html](http://pandoc.org/installing.html)

**note** you'll also need to install MikTex (windows) or MacTex (Mac) - links are on the Pandoc installation page

It should be a simple 5-minute, 'choose all the defaults' installation.


## Using this project report template ##

Everyhthing is built from the command line using a simple Composer.json script 'pdf'. So to generate your report PDF at the command line just enter:

    > composer pdf

Pandoc will then build a file ```/_OUTPUT_PDFreport.pdf```.

(having first installed pandoc and latex)

have a BLANK LINE at the end of each chapters markdown file
(this should ensure a new page and new chapter number)

for each chapter you add (e.g. 03 for chapter 3) do the following:

- create a folder e.g. /03
- create a markdown file in that folder, e.g. /03/03.md
- add the folder/file to the composer.json "pdf" script

    e.g.

    ```
    "pdf":
          "pandoc -s -S --toc -N -c epub/ProGit.css --chapters -o _OUTPUT_PDF/report.pdf 00_title/title.txt --bibliography=99_refs/refs.json 01/01.md 02/02.md  99_refs/references.md",
    ```

   becomes

    ```
       "pdf":
         "pandoc -s -S --toc -N -c epub/ProGit.css --chapters -o _OUTPUT_PDF/report.pdf 00_title/title.txt --bibliography=99_refs/refs.json 01/01.md 02/02.md 03/03.md 99_refs/references.md",
    ```

- if there are any figures, create a folder, e.g. 03_figures

- if you are generating HTML, you also need to add the 03/03.md to the 'html' composer.json script, AND also copy the figures folder into the _OUTPUT_HTML folder for the image to appear in the web page


## The idea and source of this project report template ##

This repository is based on a simplified version of the Pandoc example of the ProGit book (from markdown to PDF):

- [http://pandoc.org/epub.html#a-real-book](http://pandoc.org/epub.html#a-real-book)


## todo ##

- remove chapter numbers for appendices  ...
but don't worry about that for now - it's not a deal-breaker when it comes to grading your report

in a nutshell, you should be spending your time putting the CONTENT into the report, not worrying about its formatting

AND you should be archiving and version controlling your report with Git

AND (if in a team) you should be collaboratively, incrementally adding to the report using Git
