FROM alpine:latest

<<<<<<< HEAD:dockerfile
RUN apk add --no-cache openssh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 22
ENTRYPOINT ["/entrypoint.sh"]
=======
# Keep the container running
CMD ["tail", "-f", "/dev/null"]
>>>>>>> 659dccfe467fff732678a81ec983c1c9b0bc29f0:Dockerfile
