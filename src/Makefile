# doc config
DOCS_LAYOUT = thomasf-solarizedcsslight
CH3 = matching-factor


doc_page:
	cd ../docs/ && npm install 
	# tutte 
	../docs/node_modules/markdown-styles/bin/generate-md \
		--layout $(DOCS_LAYOUT) \
		--input $(CH3)/tutte-theorem/ \
		--output ../docs/$(CH3)/tutte-theorem