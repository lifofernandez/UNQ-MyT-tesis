# Generar PDF

install:
	sudo pacman -S pandoc pandoc-citeproc texlive-core
	
plan:
	pandoc plan.md --template=tesis \
	-o output/lisandro_fernandez-plan_de_tesis.pdf \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--toc 

seminario:
	pandoc seminario.md --template=seminario \
	-o output/lisandro_fernandez-seminario_inscripcion_formulario.pdf \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc 
	
# -s --csl=vendor/apa-annotated-bibliography.csl \
