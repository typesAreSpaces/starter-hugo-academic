.PHONY: build test clean

build:
	hugo -D

test:
	hugo server -D

clean:
	@rm -rf build

deploy:
	rsync -avz --delete public/ jose.castellanosjoo@moons.cs.unm.edu:~/public_html
