# Generar PDF

install:
	sudo pacman -S pandoc pandoc-citeproc texlive-core texlive-music pygmentize & 
	pip install pygments jinja2 yaml
	
tex:
	pandoc seminario.md --template=seminario \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--toc --toc-depth=4 --number-sections \
	-o output.tex

pdf:
	xelatex -shell-escape output.tex
props:
	python propiedades.py
	
clean: 
	rm _minted-output* -r
	rm output.* 
render: 
	make props
	make tex 
	make pdf
	make pdf # quick fix: table of contents.
	
	
# -s --csl=vendor/apa-annotated-bibliography.csl \

