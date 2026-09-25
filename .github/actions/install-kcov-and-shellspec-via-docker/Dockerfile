ARG KCOV_IMAGE=kcov/kcov:latest
FROM ${KCOV_IMAGE}

ARG SHELLSPEC_VERSION=0.28.1

# Build runs as root, so no sudo. Refresh package lists, then install what
# shellspec needs: bash (the -s /bin/bash test shell) and curl + CA certs
# (to download shellspec).
RUN apt-get update \
 && apt-get install -y --no-install-recommends bash ca-certificates curl \
 && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL \
      "https://github.com/shellspec/shellspec/releases/download/${SHELLSPEC_VERSION}/shellspec-dist.tar.gz" \
    | tar -xz -C /opt \
 && ln -s /opt/shellspec/shellspec /usr/local/bin/shellspec \
 && shellspec --version \
 && kcov --version

# The kcov image's entrypoint is kcov; replace it so the wrapper's arguments
# go straight to shellspec.
ENTRYPOINT ["shellspec"]
