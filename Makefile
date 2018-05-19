default:
	mix clean
	mix deps.get
	mix release --env=prod
build:
	docker build -t echo .
compile:
	docker run --rm -v $(pwd):/app echo:latest make
