#!/usr/bin/env bash

npm pack ../
docker build . -t remote_serial
