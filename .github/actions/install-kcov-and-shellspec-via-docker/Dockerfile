# Use the Kcov image.
FROM kcov/kcov:latest

ARG SHELLSPEC_VERSION=0.28.1

# Set UTF-8 so bash doesn't fall back to POSIX behavior.
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# Build runs as root, so no sudo. Refresh package lists, then install what
# ShellSpec needs.
RUN apt-get update \
 && apt-get install -y --no-install-recommends bash ca-certificates curl \
 && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL \
      "https://github.com/shellspec/shellspec/releases/download/${SHELLSPEC_VERSION}/shellspec-dist.tar.gz" \
    | tar -xz -C /opt \
 && ln -s /opt/shellspec/shellspec /usr/local/bin/shellspec \
 && shellspec --version \
 && kcov --version

# The Kcov image's entrypoint is kcov; replace it so the wrapper's arguments
# go straight to ShellSpec.
ENTRYPOINT ["shellspec"]
