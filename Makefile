.PHONY: .venv
.venv:
	@rm -rf .venv poetry.lock
	@poetry lock -q
	@poetry install --sync -q

.PHONY: hello
hello: .venv
	@poetry run hello
