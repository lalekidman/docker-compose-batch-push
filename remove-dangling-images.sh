#!/usr/bin/env bash
docker rmi -f $(docker images -a -q -f dangling=true)
