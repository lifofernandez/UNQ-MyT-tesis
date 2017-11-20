# Generar PDF

dependencias:
	sudo pacman -S pandoc pandoc-citeproc texlive-core
	
plan:
	pandoc plan.md metadata-plan.yml --template=tesis \
	-o output/lisandro_fernandez-plan_de_tesis.pdf \
	-s -S --csl=vendor/iso690-author-date-es.csl \
	--toc 
