help:	## Display this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

present_slides:	## Use lookatme to present slides.md
	lookatme --exts file_loader,terminal --safe slides.md

present_slides_using_live_reload:	## Use lookatme and its live-reload feature to present slides.md
	lookatme --exts file_loader,terminal --live-reload --safe slides.md

setup_presentation_environment:	## Install Python dependencies needed for presentation
	pip3 install --requirement requirements.txt
