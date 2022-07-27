USERNAME='~jose.castellanosjoo'
DOMAIN='cs.unm.edu'
BASE_URL='https:\/\/www.$(DOMAIN)\/$(USERNAME)\/'
CURRENT_ICON_PATH=~/Pictures/icon.png
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
	BROWSER=/Applications/Firefox.app/Contents/MacOS/firefox-bin
endif
ifeq ($(UNAME_S),Linux)
	BROWSER=firefox
endif

.PHONY: build test clean deploy setBaseUrl setLogo

build:
	hugo -D

test:
	echo $(OSTYPE)
	$(BROWSER) --new-tab http://localhost:1313/$(USERNAME)/
	hugo server -D

clean:
	@rm -rf public

deploy:
	@echo 'Make sure BASE_URL is correct.'
	rsync -avz --delete public/ $(USERNAME)@moons.$(DOMAIN):~/public_html

setBaseUrl:
	sed -i "s/baseURL:.*/baseURL: $(BASE_URL)/g" ./config/_default/config.yaml

setLogo:
	@cp $(CURRENT_ICON_PATH) ./assets/media/icon.png

updatePublications:
	academic import --bibtex ./static/CV/publications.bib
