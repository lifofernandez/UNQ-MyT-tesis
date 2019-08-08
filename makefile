# Generar PDF

install:
	sudo pacman -S pandoc pandoc-citeproc texlive-core texlive-music pygmentize & 
	pip install pygments jinja2 yaml
	
comentarios:
	cat seminario.md | grep -v '%' > seminario_sincomentarios.md

tex:
	pandoc seminario_sincomentarios.md --template=seminario \
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
	make comentarios
	make props
	make tex 
	make pdf
	make pdf # quick fix: table of contents.
	firefox output.pdf
	
	
# -s --csl=vendor/apa-annotated-bibliography.csl \

