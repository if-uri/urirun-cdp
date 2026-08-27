PYTHON ?= python3

.PHONY: install test

install:
	$(PYTHON) -m pip install .

test: install
	$(PYTHON) -m pip install "pytest>=8"
	$(PYTHON) -m pytest -q
