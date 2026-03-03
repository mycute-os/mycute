.PHONY: push

push:
	$(eval VERSION := $(shell grep '^version = ' ../mycute/Cargo.toml | sed 's/version = "\(.*\)"/\1/'))
	@if [ -z "$(VERSION)" ]; then echo "Version not found in Cargo.toml"; exit 1; fi
	@echo "Commit and push with version v$(VERSION)..."
	git add .
	git commit -m "v$(VERSION)" || true
	git tag "v$(VERSION)" || true
	git push origin HEAD
	git push origin "v$(VERSION)"
