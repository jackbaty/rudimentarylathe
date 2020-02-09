PUBLIC_DIR=output/
SERVER_HOST=server.baty.net
SERVER_DIR=/home/jbaty/apps/rudimentarylathe/public_html
TARGET=lightsail



deploy: 
	@echo "\033[0;32mDeploying updates to $(TARGET)...\033[0m"
	rsync -v -rz --checksum --delete --no-perms ~/pub/rudimentarylathe/files $(SERVER_HOST):$(SERVER_DIR)
	rsync -v -rz --checksum --delete --no-perms ~/pub/rudimentarylathe/index.html $(SERVER_HOST):$(SERVER_DIR)


build: clean
	@echo "\033[0;32mBuilding site...\033[0m"
	tiddlywiki ./ --build index

commit:
	git add -A
	git commit -m "Build site `date`"

push:
	git push origin master

clean:
	rm -rf $(PUBLIC_DIR)

.FORCE:

