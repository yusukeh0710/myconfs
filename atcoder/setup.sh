#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)
CONTEST_NAME=$(basename $SCRIPT_DIR)
~/work/atcoder/oj  https://atcoder.jp/contests/${CONTEST_NAME} a b c d e f g h
