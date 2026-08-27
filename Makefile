PYTHON ?= python3

.PHONY: install test doctor-setup doctor-check

install:
	$(PYTHON) -m pip install .

test: install
	$(PYTHON) -m pip install "pytest>=8"
	$(PYTHON) -m pytest -q

# Doctor entrypoint: prepare the environment for health/validation runs.
doctor-setup: install
	$(PYTHON) -m pip install "pytest>=8"
	$(PYTHON) -c "import urirun_cdp; print('urirun_cdp', getattr(urirun_cdp, '__version__', 'ok'))"

# Doctor healthcheck: confirm the meta-package surface imports correctly.
doctor-check:
	$(PYTHON) -c "import urirun_cdp; print('doctor-check: urirun_cdp import OK')"
	$(PYTHON) -m pytest -q
