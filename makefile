# Generar PDF

install:
	sudo pacman -S pandoc pandoc-citeproc texlive-core texlive-music pygmentize & 
	pip install pygments
	
tex:
	pandoc seminario.md --template=seminario \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--toc --toc-depth=4 --number-sections \
	-o output.tex

pdf:
	xelatex -shell-escape output.tex
	
	
render: 
	rm _minted-output* -r
	rm output.* 
	make tex 
	make pdf
	
	
# -s --csl=vendor/apa-annotated-bibliography.csl \

