run:
	docker build -t log-analyzer .
	docker run --rm -v ${PWD}:/app log-analyzer

clean:
	rm -f report.txt
