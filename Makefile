SHELL := /bin/bash

help:
	@echo "Usage:"
	@echo " make release | Release to pypi."
	@echo " make test | Run the tests."

release:
	python setup.py register sdist bdist_wheel upload

test:
	@coverage run --omit="*/.*/*" ./tests/run.py
	@coverage report --show-missing
	@flake8 ./django_postgres_pgpfields
