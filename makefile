install:
	sudo pacman -S \
	pandoc pandoc-citeproc pandoc-crossref \
	texlive-core texlive-music pygmentize 
	pip install pygments jinja2 yaml
	
comentarios:
	@cat seminario.md | grep -v '^%' > seminario_sincomentarios.md

props:
	@python propiedades.py

tex:
	@pandoc \
	seminario_sincomentarios.md \
       	--template=seminario \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--toc --toc-depth=4 --number-sections \
	-o output.tex
	
# -V colorlinks \ #revisar por que no anda

pdf:
	@xelatex \
	-interaction=batchmode \
	-shell-escape output.tex
verb:
	xelatex \
	-shell-escape output.tex
	
clean: 
	-@rm _minted-output* -r 2>/dev/null || true
	-@rm output.* 2>/dev/null || true


render: 
	@make props
	@make comentarios
	@make tex 
	@make pdf # quick fix: table of contents.
	@make pdf

verbose: 
	make props
	make comentarios
	make tex 
	make verb
	make pdf # quick fix: table of contents.
	firefox output.pdf
	
cuenta_palabras:
	tr '[A-Z]' '[a-z]' < seminario_sincomentarios.md | \
	tr -cd '[A-Za-z0-9_ \012]' | \
	tr -s '[ ]' '\012' | \
	sort | \
	uniq -c | \
	sort -nr | \
	grep -v '1'

	
tesauro:
	w3m -dump http://www.google.com/search?q="sinonimo $(BUSCAR)" | grep $(BUSCAR)


	
# -s --csl=vendor/apa-annotated-bibliography.csl \

#	--filter=pandoc-crossref \
#	-V links-as-notes \
# 	-V linkcolor:blue \
 

# CURRENT_WID := $(shell xdotool getwindowfocus)
# WID := $(shell xdotool search --name "Mozilla Firefox")
# 
# reload:
# 	xdotool windowactivate $(WID)
# 	xdotool key --clearmodifiers ctrl+r
# 	xdotool windowactivate $(CURRENT_WID)

 
