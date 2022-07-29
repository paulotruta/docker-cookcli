# docker-cookcli
A Docker image for running the CookCLI webserver and tools without installing them in your system

## Building the Image
```bash
docker build -t <desired_image_tag> .
```

## Running the Image

This image listens to port 9080, but you can choose any port on the host machine

```bash
docker run -d -p 127.0.0.1:<desired_host_port>:9080 test-image
```

## Files

This image runs `cook server` and fetches recipe and shopping list files from the ´/home/app` directory in the container.

_Note: Currently on build the command `cook seed` is ran to generate example recipe files to check on the webapp. This should be removed in a future version._
