#!/usr/bin/env bash

#  Copyright (c) 2014-present, Facebook, Inc.
#  All rights reserved.
#
#  This source code is licensed as defined on the LICENSE file found in the
#  root directory of this source tree.

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $SCRIPT_DIR/lib.sh

# To request that tests run 'make deps' before building.
# Define or uncomment the following control variable: RUN_BUILD_DEPS
# $ export RUN_BUILD_DEPS=1

# To request that tests include additional 'release' or 'package' units.
# Define or uncomment the following control variable: RUN_RELEASE_TESTS
# $ export RUN_RELEASE_TESTS=1

# To request a non-default build target.
# Define or uncomment the following control variable: RUN_TARGET
# $ export RUN_TARGET=target

# Run the build function and the tests
if [[ -z "$SKIP_TESTS" ]]; then RUN_TESTS=true; else RUN_TESTS=false; fi
build $RUN_TESTS

exit 0
