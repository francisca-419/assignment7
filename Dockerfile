FROM alpine:latest

# Create /structure directory and set permissions
RUN mkdir -p /structure && chmod 777 /structure

# Create files and set ownership
RUN touch /structure/sync-work && chown sync:sync /structure/sync-work
RUN touch /structure/nobody-work && chown nobody:nobody /structure/nobody-work

# Create user collin with UID 5000
RUN adduser -D -u 5000 collin

# Default command
CMD ["sh", "-c", "while true; do echo users; done"]

