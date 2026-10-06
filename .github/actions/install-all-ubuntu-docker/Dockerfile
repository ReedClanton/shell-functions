# Use the Kcov image.
FROM kcov/kcov:latest

ARG SHELLSPEC_VERSION=0.28.1

# Set UTF-8 so bash doesn't fall back to POSIX behavior.
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# Build runs as root so `sudo` isn't needed.
# Refresh package lists, then install ShellSpec along with other required tooling.
RUN apt-get update \
 && apt-get install -y --no-install-recommends bash zsh dash busybox yash posh \
 ca-certificates curl \
 && rm -rf /var/lib/apt/lists/*

# Versions of everything that's installed is printed at the end. This ensures it's installed.
# If it's not installed, including it in the run command will cause a failure before the
# pipeline reaches the test phase.
RUN curl -fsSL \
      "https://github.com/shellspec/shellspec/releases/download/${SHELLSPEC_VERSION}/shellspec-dist.tar.gz" \
    | tar -xz -C /opt \
 && ln -s /opt/shellspec/shellspec /usr/local/bin/shellspec \
 && shellspec --version \
 && kcov --version \
 && zsh --version \
 && dash --version \
 && bash --version \
 && busybox ash --version \
 && yash --version \
 && posh --version

# The Kcov image's entrypoint is kcov; replace it so the wrapper's arguments
# go straight to ShellSpec.
ENTRYPOINT ["shellspec"]
