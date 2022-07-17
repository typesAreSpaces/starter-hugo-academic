BASE_URL='https:\/\/www.cs.unm.edu\/~jose.castellanosjoo\/'

.PHONY: build test clean

build:
	hugo -D

test:
	firefox --new-tab http://localhost:1313/~jose.castellanosjoo/
	hugo server -D

clean:
	@rm -rf build

deploy:
	@echo 'Make sure BASE_URL is correct.'
	rsync -avz --delete public/ jose.castellanosjoo@moons.cs.unm.edu:~/public_html

setBaseUrl:
	sed -i "s/baseURL:.*/baseURL: $(BASE_URL)/g" ./config/_default/config.yaml

setLogo:
	@echo "The file should have 'icon.png' as name"
	mv $1 ./assets/media/icon.png

