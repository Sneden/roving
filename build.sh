#!/bin/bash


#This script is used to run the first build from inside the server container.

chmod +x run_server.sh
cp -r /volumes/roving /root/

cd /root/roving/examples
chmod +x c-server
chmod +x c-server_build
cd ..
./examples/c-server_build

sed -i 's/zlib\.net/zlib\.net\/fossils/' /root/.cache/bazel/_bazel_root/*/external/com_google_protobuf/protobuf_deps.bzl

sed -i 's/zlib\.net/zlib\.net\/fossils/' /root/.cache/bazel/_bazel_root/*/external/rules_proto/proto/private/dependencies.bzl

./examples/c-server_build
