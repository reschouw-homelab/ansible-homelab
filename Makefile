PYTHON := $(shell which python3)
ENV := $(CURDIR)/env
PIP := $(ENV)/bin/pip

$(ENV):
	$(PYTHON) -m venv env
	$(PIP) install --upgrade pip3 setuptools

deps: $(ENV) ## sets up the environment (python3.6 required)
	$(PIP) install --upgrade -r requirements.txt

clean: ## clears out the python environment in repo
	rm -rf $(ENV)
