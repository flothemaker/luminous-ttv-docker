FROM alpine:latest

# Install required utilities: curl and unzip
RUN apk add --no-cache curl unzip

# Set working directory
WORKDIR /app

# Download and extract the executable from GitHub
RUN curl -Lo app.zip https://github.com/AlyoshaVasilieva/luminous-ttv/releases/download/v0.5.8/luminous-ttv-0.5.8-x86_64-unknown-linux-musl.zip \
    && unzip app.zip \
    && rm app.zip

# (OPTIONAL) List files for debugging
# RUN ls -l

# Make sure the binary is executable (replace with actual binary name if different)
RUN chmod +x luminous-ttv

# Set the entrypoint (update if your binary name is different)
CMD ["./luminous-ttv"]
