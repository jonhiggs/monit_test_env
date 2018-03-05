# monit_test_env

I wanted to test the behaviour of an old version of Monit in a test environment. This is the resulting tooling.


## Usage

- `make build` - build the Docker image.
- `make daemon` - start a container running Monit.
- `make connection` - connect to the shell of the running daemon container.
