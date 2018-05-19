# Echo

Dummy project to test cross-compilation with Docker.
Basically uses Docker to create a distillery release, then zip and copy
the resulting build artifact to various Linux VPS to be tested.

```
make build_docker
make compile
make zip
```
