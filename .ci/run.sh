#!/bin/bash
#
# Copyright (c) 2018 Intel Corporation
#
# SPDX-License-Identifier: Apache-2.0
#


set -e

export GOPATH="${GOPATH:-/tmp/go}"

script_dir="$(dirname $(readlink -f $0))"

sudo -E PATH="$PATH" bats "${script_dir}/../tests/image_creation.bats"
