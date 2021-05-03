main.pdf: main.tex
	pdflatex -shell-escape $^

main.txt: main.tex
	detex -r $^ > $@

main.zip: main.tex preamble.tex glossary.tex front.tex abstract.tex introduction.tex preliminaries.tex architecture.tex evaluation.tex related.tex conclusion.tex main.bib ArchitectureOverview.pdf CnfSchema.pdf GcnExample.pdf llncs.cls
	zip -v $@ $^

Springer_Instructions_for_Authors_of_Proceedings_CS.pdf:
	wget ftp://ftp.springernature.com/cs-proceeding/svproc/guidelines/Springer_Instructions_for_Authors_of_Proceedings_CS.pdf
