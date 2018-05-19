default:
	mix clean
	mix deps.get
	mix release --env=prod
build_docker:
	docker build -t echo .
compile:
	docker run --rm -v $(CURDIR):/app echo:latest make
zip:
	zip -r -9 build.zip _build/dev/rel/echo
	scp build.zip linode:echo.zip
	scp build.zip do1:echo.zip
	scp build.zip do2:echo.zip
