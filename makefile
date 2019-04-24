# Generar PDF

install:
	sudo pacman -S pandoc pandoc-citeproc texlive-core texlive-music pygmentize && \
        pip install pygments
	
tex:
	pandoc seminario.md --template=seminario \
	-o output.tex \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--toc --toc-depth=4 --number-sections 

pdf:
	xelatex -shell-escape output.tex
	
	
# -s --csl=vendor/apa-annotated-bibliography.csl \
