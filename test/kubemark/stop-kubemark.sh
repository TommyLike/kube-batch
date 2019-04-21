#!/usr/bin/env bash

#Get configured value
source default_config.sh

TMP_ROOT="$(dirname "${BASH_SOURCE}")/../../vendor/k8s.io/kubernetes"
KUBE_ROOT=$(readlink -e "${TMP_ROOT}" 2> /dev/null || perl -MCwd -e 'print Cwd::abs_path shift' "${TMP_ROOT}")
KUBEMARK_DIRECTORY="${KUBE_ROOT}/test/kubemark"

ZONE=${ZONE} KUBE_GCE_NETWORK=${KUBE_GCE_NETWORK} bash -x ${KUBEMARK_DIRECTORY}/stop-kubemark.sh
