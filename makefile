# Generar PDF

install:
	sudo pacman -S pandoc pandoc-citeproc texlive-core
	
plan:
	pandoc plan.md --template=tesis \
	-o output/lisandro_fernandez-plan_de_tesis.pdf \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--toc 
