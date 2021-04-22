current_dir = $(shell pwd)

build:
	docker build . -t vimp_image
start: build
	docker run \
		--rm -v $(current_dir)/.vimrc:/root/.config/nvim/init.vim \
		-it vimp_image 
clean:
	docker rmi -f vimp_image
