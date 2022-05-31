# Set up resources using docker-compose
docker_compose('docker-compose.yml')

# Bootstrap Gort for initial use
local_resource(
    "Bootstrap", 
    "./scripts/bootstrap.sh",
    resource_deps=["gort"]
)

# Build image for use in bundle
local_resource(
    "Image",
    "./scripts/build.sh",
    deps=["Dockerfile"],
    resource_deps=["Bootstrap"]
)

# Install bundle
local_resource(
    "Bundle",
    "./scripts/gort bundle install -f -e bundle.yml",
    deps=["./bundle.yml"],
    resource_deps=["Image"]
)