FROM amazonlinux:latest

ARG HUGO_VERSION=0.125.5
ARG GO_VERSION=1.22.3

# Install build dependencies
RUN apk add --no-cache git wget openssh

# Install Hugo extended
RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz
RUN tar -xf hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz hugo
RUN mv hugo /usr/bin/hugo
RUN rm -rf hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz

# Install Golang
RUN wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz
RUN export PATH=$PATH:/usr/local/go/bin
RUN go install github.com/evanaze/hugo-obsidian@latest

# Create links
RUN go install github.com/evanaze/hugo-obsidian@latest
RUN hugo-obsidian -input=content -output=assets/indices -index -root=.

# Build the website
RUN hugo

