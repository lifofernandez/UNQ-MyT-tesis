# Generar PDF

dependencias:
	sudo pacman -S pandoc pandoc-citeproc texlive-core
	
	wget https://bootstrap.pypa.io/get-pip.py
	sudo python3 get-pip.py
	rm get-pip.py
	sudo pip3 install pandocfilters
plan:
	pandoc plan.md metadata-plan.yml --template=tesis \
	-o output/lisandro_fernandez-plan_de_tesis.pdf \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--toc 
# --filter=./vendor/dot2tex-filter.py \
# -f markdown+smart \ 
# -t markdown-smart
