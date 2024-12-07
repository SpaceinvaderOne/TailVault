FROM alpine:latest

# Keep the container running
CMD ["tail", "-f", "/dev/null"]
