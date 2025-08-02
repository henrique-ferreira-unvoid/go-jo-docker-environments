# Ember Docker Environment Makefile

# Default target
help:
	@echo "Ember Docker Environment Management"
	@echo ""
	@echo "Usage:"
	@echo "  make build        - Build the Docker images"
	@echo "  make start        - Start the Docker containers"
	@echo "  make stop         - Stop the Docker containers"
	@echo "  make restart      - Restart the Docker containers"
	@echo "  make clean        - Remove all containers and images"
	@echo "  make shell        - Open a shell in the Go-jo container"

# Build the Docker images
build:
	@echo "Building Docker images..."
	docker compose build

# Start the Docker containers
start:
	@echo "Starting Docker containers..."
	docker compose up -d
	@echo "Services started. Use 'make status' to check status."

# Stop the Docker containers
stop:
	@echo "Stopping Docker containers..."
	docker compose down

# Restart the Docker containers
restart: stop start

# Remove all containers and images
clean:
	@echo "Removing containers..."
	docker compose down
	@echo "Removing volumes..."
	docker compose down -v
	@echo "Removing images..."
	docker rmi go-jo:1.0 || true
	@echo "Clean complete."

# Open a shell in the Go-jo container
shell:
	@echo "Opening shell in Go-jo container..."
	docker compose exec go-jo /bin/bash

# Clean, build and start
redo: stop clean build start