ORG = "erlangsolutions"

build:
	docker build . -t ${ORG}/tanka-alpine:alpine3.12
	docker push ${ORG}/tanka-alpine:alpine3.12
