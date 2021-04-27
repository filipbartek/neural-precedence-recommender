main.pdf: main.tex
	pdflatex -shell-escape $^

main.txt: main.tex
	detex -r $^ > $@

main.zip: main.tex preamble.tex glossary.tex front.tex abstract.tex introduction.tex preliminaries.tex architecture.tex evaluation.tex related.tex conclusion.tex main.bib ArchitectureOverview.pdf CnfSchema.pdf GcnExample.pdf llncs.cls
	zip -v $@ $^
