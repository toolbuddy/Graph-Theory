# doc config
DOCS_LAYOUT = thomasf-solarizedcsslight
CH3 = matching-factor
CH4 = connectivity-path

all: $(CH3) $(CH4)

ch3:
	cd docs/ && npm install 
	# hall
	docs/node_modules/markdown-styles/bin/generate-md \
		--layout $(DOCS_LAYOUT) \
		--input src/$(CH3)/hall-condition/ \
		--output docs/$(CH3)/hall-condition
	# ind-set-and-edge-cover
	docs/node_modules/markdown-styles/bin/generate-md \
		--layout $(DOCS_LAYOUT) \
		--input src/$(CH3)/ind-set-and-edge-cover/ \
		--output docs/$(CH3)/ind-set-and-edge-cover
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

ch4:
	cd docs/ && npm install
	# 
	docs/node_modules/papogen/main.js \
		-s src/$(CH4) \
		-g md -m md_doc \
		-o docs/$(CH4) -t Graph-Theory-Ch4

