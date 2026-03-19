.PHONY: push

push:
	$(eval VERSION := $(shell grep 'MYCUTE_VERSION' ../mycute/src/constants.rs | grep -oE '[0-9]+\.[0-9]+\.[0-9]+'))
	@if [ -z "$(VERSION)" ]; then echo "Version not found in src/constants.rs"; exit 1; fi
	@echo "Commit and push with version v$(VERSION)..."
	git add .
	git commit -m "v$(VERSION)" || true
	git tag "v$(VERSION)" || true
	git push origin HEAD
	git push origin "v$(VERSION)"
