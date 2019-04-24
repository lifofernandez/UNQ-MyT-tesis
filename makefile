# Generar PDF

install:
	sudo pacman -S pandoc pandoc-citeproc texlive-core texlive-music pygmentize && \
        pip install pygments
	
tex:
	pandoc seminario.md --template=seminario \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--filter=pandoc-minted \
	--pdf-engine-opt=-shell-escape \
	--toc --toc-depth=4 --number-sections \
	-o output.tex 

pdf:
	xelatex -shell-escape -toc output.tex
	
	
# -s --csl=vendor/apa-annotated-bibliography.csl \
