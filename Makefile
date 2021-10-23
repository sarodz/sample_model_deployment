install: setup.cfg
	pip install -e .[dev]

clean:
	@echo "Remove files"
	rm -rf .pytest_cache
	rm -rf src/sample_model_deployment/__pycache__/
	rm -rf src/sample_model_deployment.egg-info/
	rm -rf tests/__pycache__/

test: clean
	pytest
