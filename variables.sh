#!/bin/bash -e

BUILDS=("protoc-all" "protoc" "prototool" "grpc-cli" "gen-grpc-gateway")
DOCKER_REPO=${DOCKER_REPO:-docker-protoc}
NAMESPACE=${NAMESPACE:-agoja}
CONTAINER=${NAMESPACE}
LATEST=${1:false}

GO_VERSION=${GO_VERSION:-1.16}
GRPC_VERSION=${GRPC_VERSION:-1.41}
GRPC_JAVA_VERSION=${GRPC_JAVA_VERSION:-1.39}
GRPC_WEB_VERSION=${GRPC_WEB_VERSION:-1.3}
GRPC_GATEWAY_VERSION=${GRPC_GATEWAY_VERSION:-2.0.1}
UBER_PROTOTOOL_VERSION=${UBER_PROTOTOOL_VERSION:-1.3.0}
SCALA_PB_VERSION=${SCALA_PB_VERSION:-0.11.0}
NODE_VERSION=${NODE_VERSION:-14}
NODE_GRPC_TOOLS_NODE_PROTOC_TS_VERSION=${NODE_GRPC_TOOLS_NODE_PROTOC_TS_VERSION:-5.1.3}
NODE_GRPC_TOOLS_VERSION=${NODE_GRPC_TOOLS_VERSION:-1.11.1}
NODE_PROTOC_GET_GRPC_WEB_VERSION=${NODE_PROTOC_GET_GRPC_WEB_VERSION:-1.3}
GO_ENVOYPROXY_PGV_VERSION=${GO_ENVOYPROXY_PGV_VERSION:-0.6.1}
BUILD_VERSION="${BUILD_VERSION:-0}"
VERSION="${VERSION:-${GRPC_VERSION}.${BUILD_VERSION}}"
