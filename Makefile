PYTHON ?= python3

.PHONY: install test doctor-test

install:
	$(PYTHON) -m pip install .

test: install
	$(PYTHON) -m pip install "pytest>=8"
	$(MAKE) doctor-test PYTHON=$(PYTHON)

doctor-test:
	$(PYTHON) -m pytest -q
