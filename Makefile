.POSIX:
.PHONY: help checkpoint deploy



checkpoint:
	git add .
	git diff-index --quiet HEAD || git commit -m "Publish checkpoint"

deploy: checkpoint
	git push
