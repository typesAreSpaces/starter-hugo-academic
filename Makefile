USERNAME='~jose.castellanosjoo'
DOMAIN='cs.unm.edu'
BASE_URL='https:\/\/www.$(DOMAIN)\/$(USERNAME)\/'
CURRENT_ICON_PATH=~/Pictures/icon.png

.PHONY: build test clean deploy setBaseUrl setLogo

build:
	hugo -D

test:
	firefox --new-tab http://localhost:1313/$(USERNAME)/
	hugo server -D

clean:
	@rm -rf build

deploy:
	@echo 'Make sure BASE_URL is correct.'
	rsync -avz --delete public/ $(USERNAME)@moons.$(DOMAIN):~/public_html

setBaseUrl:
	sed -i "s/baseURL:.*/baseURL: $(BASE_URL)/g" ./config/_default/config.yaml

setLogo:
	@cp $(CURRENT_ICON_PATH) ./assets/media/icon.png

