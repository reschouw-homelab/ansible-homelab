PYTHON := $(shell which python3)
ENV := $(CURDIR)/env
PIP := $(ENV)/bin/pip

all: env deps

env:
	$(PYTHON) -m venv env

deps: $(ENV) ## sets up the environment (python3.6 required)
	$(PIP) install --upgrade -r requirements.txt

clean: ## clears out the python environment in repo
	rm -rf $(ENV)
