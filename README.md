# UNQ-MyT-tesis
pandoc plan.md metadata.yaml --template=tesis -o output/lisandro_fernandez-plan_de_tesis.pdf -s -S

----

pandoc -V geometry=paperwidth=18cm, paperheight=34cm, margin=0.3cm \
    -V language=de-DE -V lang=ngerman --highlight-style=espresso \
    --filter=pandoc-citeproc  --biblio=my-biblio.bib --csl=stuttgart-media-university.csl \
    -o examplei.pdf mwe.md

----

pandoc plan.md metadata.yaml --template=tesis -o output/lisandro_fernandez-plan_de_tesis.pdf -s -S --csl=iso690-author-date-es.csl --biblio=bibliografia.bib --filter=pandoc-citeproc

----

pandoc plan.md metadata.yaml --template=tesis -o output/lisandro_fernandez-plan_de_tesis.pdf -s -S --csl=iso690-author-date-es.csl --filter=pandoc-citeproc

---

pandoc plan.md metadata.yaml --template=tesis -o output/lisandro_fernandez-plan_de_tesis.pdf -s -S --csl=vendor/iso690-author-date-es.csl --filter=pandoc-citeproc --filter=./vendor/dot2tex-filter.py --toc 

