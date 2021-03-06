PUBLIC_DIR=output/
BACKUP_DIR=index.html_backup/
SERVER_HOST=server01.baty.net
SERVER_DIR=/home/jbaty/apps/rudimentarylathe.org/public_html
TARGET=DigitalOcean




deploy: build
	@echo "\033[0;32mDeploying updates to $(TARGET)...\033[0m"
	rsync -v -rz --checksum --delete --no-perms ~/Dropbox/pub/rudimentarylathe/files $(SERVER_HOST):$(SERVER_DIR)
	rsync -v -rz --checksum --delete --no-perms ~/Dropbox/pub/rudimentarylathe/output/index.html $(SERVER_HOST):$(SERVER_DIR)


build: clean
	@echo "\033[0;32mBuilding site...\033[0m"
	tiddlywiki --rendertiddler $$:/plugins/tiddlywiki/tiddlyweb/save/offline index.html text/plain

commit:
	@echo "\033[0;32mAdding changes\033[0m"
	git add -A
	git commit -m "Build site `date`"

push:
	@echo "\033[0;32mPushing repo\033[0m"
	git push origin master

start:
	/Users/jbaty/bin/startl

restart:
	forever restartall

clean:
	rm -rf $(PUBLIC_DIR)
	rm -rf $(BACKUP_DIR)

.FORCE:

