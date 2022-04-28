#!/bin/bash


#This script is used to run after the first erroneous build.

cd /root/roving/examples
chmod +x c-server

sed -i 's/zlib\.net/zlib\.net\/fossils/' /root/.cache/bazel/_bazel_root/*/external/com_google_protobuf/protobuf_deps.bzl

sed -i 's/zlib\.net/zlib\.net\/fossils/' /root/.cache/bazel/_bazel_root/*/external/rules_proto/proto/private/dependencies.bzl

./examples/c-server
