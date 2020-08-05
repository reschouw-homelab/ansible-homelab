PYTHON := $(shell which python3)
ENV := $(CURDIR)/env
PIP := $(ENV)/bin/pip

help:
	@printf "\033[0;32mWelcome the the Dorwinia ansible repo!\n"
	@printf "\033[0;32mmake env, source env/bin/activate, make deps\n"

env:
	$(PYTHON) -m venv env

deps: $(ENV) ## sets up the environment (python3.6 required)
	$(PIP) install --upgrade -r requirements.txt

clean: ## clears out the python environment in repo
	rm -rf $(ENV)
