# doc config
DOCS_LAYOUT = thomasf-solarizedcsslight
CH3 = matching-factor


doc_page:
	cd docs/ && npm install 
	# hall
	docs/node_modules/markdown-styles/bin/generate-md \
		--layout $(DOCS_LAYOUT) \
		--input src/$(CH3)/hall-condition/ \
		--output docs/$(CH3)/hall-condition
	# tutte 
	docs/node_modules/markdown-styles/bin/generate-md \
		--layout $(DOCS_LAYOUT) \
		--input src/$(CH3)/tutte-theorem/ \
		--output docs/$(CH3)/tutte-theorem
	# 2-factor
	docs/node_modules/markdown-styles/bin/generate-md \
		--layout $(DOCS_LAYOUT) \
		--input src/$(CH3)/2-factor-algo/ \
		--output docs/$(CH3)/2-factor-algo