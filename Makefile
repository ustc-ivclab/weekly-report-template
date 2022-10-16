.PHONY: default
default: all

.PHONY: all
all: template.tex images/main-1.png

template.tex: main.tex
	perl -0pe's/(?<=\{%\n)[^}]*/  /g' $< > $@

main.pdf: main.tex
	git config user.name "display the output of \`git config user.name' and url is \`git config user.email'"
	latexmk -pvc- main.tex
	git config --unset user.name

images/main-1.png: main.pdf
	mkdir -p images
	pdftocairo -png $< images/main

clean:
	latexmk -C main.tex
	rm -rf template.tex images
