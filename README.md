# docker-bash-signal

A quick example showing how to send and handle signals in a bash script within a docker container.

```bash
# Clone the repo
git clone https://github.com/husjon/docker-bash-signal.git && cd docker-bash-signal

# Build and run the image
docker build -t docker-bash-signal . && docker run --name=dbs docker-bash-signal

# From another terminal
docker stop dbs

# Docker will now send a SIGTERM to the container then wait for the defaulted 10 seconds before sending a SIGKILL.
# Since we're catching the SIGTERM, we're able to stop the bash script gracefully.
```
