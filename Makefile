SERVER_HOST=server01.baty.net
SERVER_DIR=/home/jbaty/apps/rudimentarylathe.wiki/public_html
PUBLIC_DIR=~/Sync/wikis/rudimentarylathe/
TARGET=server01.baty.net

.POSIX:
.PHONY: help checkpoint deploy


.PHONY: help
help: ## Show this help
	@egrep -h '\s##\s' 'Makefile' | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
	@egrep -h 'h' 'Makefile' | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

checkpoint:
	git add .
	git diff-index --quiet HEAD || git commit -m "Publish checkpoint"

deploy: checkpoint
	git push
	@echo "\033[0;32mDeploying updates to $(TARGET)...\033[0m"
	rsync -v -rz --checksum --delete --no-perms $(PUBLIC_DIR)index.html $(SERVER_HOST):$(SERVER_DIR)
	rsync -v -rz --checksum --delete --no-perms $(PUBLIC_DIR)files $(SERVER_HOST):$(SERVER_DIR)

	
