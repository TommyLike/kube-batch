#!/usr/bin/env bash

#Environment that will be used when preparing environment on GCE
ZONE=${ZONE:-asia-east2-c}
KUBE_GCE_NETWORK=${KUBE_GCE_NETWORK:-default}
SOURCE_OUTPUT=/home/tommylike/work/src/k8s.io/kubernetes/_output