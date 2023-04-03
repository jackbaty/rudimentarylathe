SERVER_HOST=server01.baty.net
SERVER_DIR=/home/jbaty/apps/rudimentarylathe.wiki/public_html
PUBLIC_DIR=~/Sync/wikis/rudimentarylathe/
TARGET=server01.baty.net

.POSIX:
.PHONY: checkpoint deploy



build:
	tiddlywiki --load index.html --render "[[RSS Feed]]" "rss.xml" text/plain

checkpoint:
	git add .
	git diff-index --quiet HEAD || git commit -m "Publish checkpoint"

deploy: build checkpoint
	git push
	@echo "\033[0;32mDeploying updates to $(TARGET)...\033[0m"
	rsync -v -rz --checksum --delete --no-perms $(PUBLIC_DIR)index.html $(SERVER_HOST):$(SERVER_DIR)
	rsync -v -rz --checksum --delete --no-perms $(PUBLIC_DIR)output/rss.xml $(SERVER_HOST):$(SERVER_DIR)
	rsync -v -rz --checksum --delete --no-perms $(PUBLIC_DIR)files $(SERVER_HOST):$(SERVER_DIR)
	open raycast://confetti


	
