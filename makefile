# Generar PDF

install:
	sudo pacman -S pandoc pandoc-citeproc texlive-core
	
seminario:
	pandoc seminario.md --template=seminario \
	-o output/lisandro_fernandez-informe_seminario_investigacion.pdf \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--toc 
	
# VIEJOS

tesis:
	pandoc reserva/tesis.md --template=reserva/tesis \
	-o output/lisandro_fernandez-tesis-MyT-UNQ.pdf \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--toc 

plan:
	pandoc reserva/plan.md --template=reserva/plan \
	-o output/lisandro_fernandez-plan_de_tesis.pdf \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--toc 

presentacion:
	pandoc reserva/seminario.md --template=reserva/seminario \
	-o output/lisandro_fernandez-seminario_formulario-presentacion-rcd154-09.pdf \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc 
	
# -s --csl=vendor/apa-annotated-bibliography.csl \
