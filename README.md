## Usage

The `Makefile` provides convenient shortcuts to manage your Docker environment.

### Build the Docker Images

```bash
make build
```

### Start the Services

```bash
make start
```

This starts the Go-jo container in detached mode.

### Stop the Services

```bash
make stop
```

### Restart the Services

```bash
make restart
```

### Clean the Environment

This will stop and remove containers, volumes, and images:

```bash
make clean
```

### Access Shell Inside Containers

Open a shell inside the Ember container:

```bash
make shell
```

## Notes

- Be sure to have the Docker daemon running before executing any `make` commands.
- You can modify the Docker Compose configuration by editing the `docker-compose.yml` file.

---

For more detailed customization or troubleshooting, refer to the Docker and Docker Compose documentation.
