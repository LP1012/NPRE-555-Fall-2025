manuscript = npre555_notes
references = $(wildcard *.bib)
latexopt   = -halt-on-error -file-line-error
.DEFAULT_GOAL := pdf

pdf: $(manuscript).tex $(references)
	pdflatex $(latexopt) --shell-escape $<
	bibtex $(manuscript).aux
	pdflatex $(latexopt) --shell-escape $<
	pdflatex $(latexopt) --shell-escape $<

all-via-dvi: 
	latex $(latexopt) $(manuscript)
	bibtex $(manuscript).aux
	latex $(latexopt) $(manuscript)
	latex $(latexopt) $(manuscript)
	dvipdf $(manuscript)

epub: 
	latex $(latexopt) $(manuscript)
	bibtex $(manuscript).aux
	mk4ht htlatex $(manuscript).tex 'xhtml,charset=utf-8,pmathml' ' -cunihtf -utf8 -cvalidate'
	ebook-convert $(manuscript).html $(manuscript).epub

clean:
	rm -f $(manuscript).pdf *.dvi *.toc *.aux *.out *.log *.bbl *.blg *.log *.spl *~ *.spl *.zip *.acn *.glo *.ist *.epub *.fdb_latxmk *.lof *.fls *.lot

realclean: clean
	rm -rf $(manuscript).dvi
	rm -f $(manuscript).pdf

%.ps :%.eps
	convert $< $@

%.png :%.eps
	convert $< $@

zip:
	zip paper.zip *.tex *.eps *.bib

.PHONY: all clean
