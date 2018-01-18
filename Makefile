# doc config
CH1 = basic-graph
CH2 = tree-distance
CH3 = matching-factor
CH4 = connectivity-path

all: ch1 ch2 ch3 ch4

ch1:
	cd docs/ && npm install 
	# using papogen
	docs/node_modules/papogen/main.js \
		-s src/$(CH1) \
		-g md -m md_doc \
		-o docs/$(CH1) -t Graph-Theory-Ch1

ch2:
	cd docs/ && npm install 
	# using papogen
	docs/node_modules/papogen/main.js \
		-s src/$(CH2) \
		-g md -m md_doc \
		-o docs/$(CH2) -t Graph-Theory-Ch2

ch3:
	cd docs/ && npm install 
	# using papogen
	docs/node_modules/papogen/main.js \
		-s src/$(CH3) \
		-g md -m md_doc \
		-o docs/$(CH3) -t Graph-Theory-Ch3

ch4:
	cd docs/ && npm install
	# using papogen
	docs/node_modules/papogen/main.js \
		-s src/$(CH4) \
		-g md -m md_doc \
		-o docs/$(CH4) -t Graph-Theory-Ch4

