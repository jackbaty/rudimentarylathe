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
