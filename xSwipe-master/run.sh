#!/bin/bash
ln -s lock /tmp/xSwipe.lock || exit 0
perl ~/work_tools/xSwipe-master/xSwipe/xSwipe.pl &
