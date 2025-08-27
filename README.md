# NPRE-555-Fall-2025
This repository holds the digitized notes and additional resources for NPRE 555 - Reactor Theory I given by the University of Illinois Urbana-Champaign in Fall 2025.

Instructor: Dr. Katy Huff, Associate Professor in the department of Nuclear, Plasma, & Radiological Engineering.

## Contributing
Contributions will be accepted from all current students enrolled in the class along with Dr. Huff herself.
All modifications to this repo **must** reference an issue number. 
This can be done by either:
1. Inserting `refs #<issue number>` or `closes #<issue number>` at the end of your final commit to your feature branch, or
2. Naming your feature branch `issue<issue number>`

To contribute, first fork this repolsitory by:
1. Navigate to [https://github.com/LP1012/NPRE-555-Fall-2025](https://github.com/LP1012/NPRE-555-Fall-2025)
2. Click the "Fork" button in the upper right (do **not** change the forked repo name to something different than what is auto-generated, or you will receive an angry message)
3. Clone your fork to your local machine

Then add the upstream remote (this adds the real NPRE-555-Fall-2025 as a remote named "upstream"):
```
cd NPRE-555-Fall-2025
git remote add upstream git@github.com:LP1012/NPRE-555-Fall-2025.git
```

You can then make modifications in a branch:
```
git checkout -b branch_name upstream/main
```
Make modifications and commit to the branch:
```
git add *
git commit -m "A message about the commit

closes #12345"
```
(Note that the above `closes` statement is unnecessary if the branch is named such that it references the issue already.)

Finally, push modifications back up to GitHub:
```
git push origin branch_name
```
Finally, create the pull request on GitHub.

## Notes Formatting
The vast majority of contributions to the repo are expected to be additions to the typeset notes. 
All reasonable efforts must be made to match the style, and each day/section of notes must be placed into a file of its own and added to the `main.tex` LaTeX document.
Additionally:
- All equations must be typeset (no exceptions!)
- All figures must be computer-generated. If these figures come from an outside souce, be sure to add references to the bibliography and cite properly.
- When referencing equations, figures, tables, etc., always use the `\cref{}` command, which will keep syntax and formatting consistent.
- Each new sentence must start with a new line in the `.tex` document, and paragraphs must have *one* additional line break in between.
- All code must use `\inputminted[language]{file.extension}` when being put into the document.
- All indentation must be *two spaces*.

## Compiling Notes
To compile the notes, perform the following commands based on which type of document you are trying to produce. 


Run the command `make {insert type here}` and specify from the following:

1. For pdf, insert `pdf`.
2. For dvi, insert `all-via-dvi`.
3. For epub, insert `epub`.
4. For zip, insert `zip`.

Additionally, one can simply type `make` with no options to auto-select `pdf`.

*Note: Do not include the {} from the make command line, replace the whole {insert type here} text with the command corresponding to the correct file type.*

*Ex: To make as a pdf, the full command should be: `make pdf` or just `make`.*

### To Clean your Local Directory Run:

`make clean` or `make realclean`