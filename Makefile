.POSIX:
.PHONY: help checkpoint deploy



checkpoint:
	git add .
	git ci -m "Publish checkpoint"

deploy: checkpoint
	git push
