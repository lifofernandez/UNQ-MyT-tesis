# Generar PDF

dependencias:
	sudo pacman -S pandoc pandoc-citeproc texlive-core
	
	wget https://bootstrap.pypa.io/get-pip.py
	sudo python3 get-pip.py
	rm get-pip.py
	sudo pip3 install pandocfilters
pdf:
	pandoc plan.md metadata.yaml --template=tesis \
	-o output/lisandro_fernandez-plan_de_tesis.pdf \
	-s -S --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--filter=./vendor/dot2tex-filter.py \
	--toc 
