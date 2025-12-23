
.PHONY: clean

clean:
	@echo "Cleaning"

build:
	@echo "Building"
	docker build -t live  .
