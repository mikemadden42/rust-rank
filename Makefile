setup:
	python3 -m venv venv ; \
	. venv/bin/activate ; \
	pip3 install -r requirements.txt ; \

freeze:
	. venv/bin/activate ; \
	pip3 install --upgrade beautifulsoup4 pandas ; \
	pip3 freeze > requirements.txt ; \

run:
	. venv/bin/activate ; \
	./rr.py 2>&1 | tee rr.log ; \

.phony: freeze run setup
