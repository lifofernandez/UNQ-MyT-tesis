install:
	sudo pacman -S pandoc pandoc-citeproc texlive-core texlive-music pygmentize & 
	pip install pygments jinja2 yaml
	
comentarios:
	cat seminario.md | grep -v '%' > seminario_sincomentarios.md

props:
	python propiedades.py

tex:
	pandoc \
	seminario_sincomentarios.md \
       	--template=seminario \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--toc --toc-depth=3 --number-sections \
	-o output.tex

pdf:
	xelatex \
	-interaction=batchmode \
	-shell-escape output.tex
	
clean: 
	rm _minted-output* -r
	rm output.* 
render: 
	make props
	make comentarios
	make tex 
	make pdf
	make pdf # quick fix: table of contents.
	firefox output.pdf
	
	
# -s --csl=vendor/apa-annotated-bibliography.csl \

