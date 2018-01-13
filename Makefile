# doc config
DOCS_LAYOUT = thomasf-solarizedcsslight
CH3 = matching-factor
CH4 = connectivity-path

all: $(CH3) $(CH4)

ch3:
	cd docs/ && npm install 
	# using papogen instead
	docs/node_modules/papogen/main.js \
		-s src/$(CH3) \
		-g md -m md_doc \
		-o docs/$(CH3) -t Graph-Theory-Ch3

ch4:
	cd docs/ && npm install
	# 
	docs/node_modules/papogen/main.js \
		-s src/$(CH4) \
		-g md -m md_doc \
		-o docs/$(CH4) -t Graph-Theory-Ch4

