dependencias:
	sudo pacman -S pandoc pandoc-citeproc texlive-core texlive-pictures
	wget https://bootstrap.pypa.io/get-pip.py
	sudo python3 get-pip.py
	rm get-pip.py
	sudo pip3 install pandocfilters
pdf:
	pandoc marco_referecial.sp.md metadata.yaml \
	--template=charla \
	-o lisandro_fernandez-marco_referencial.pdf \
	-s -S --csl=../../vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc 
