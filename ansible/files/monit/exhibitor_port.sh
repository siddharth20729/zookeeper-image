#!/bin/bash

curl --fail $(hostname --ip):8181/exhibitor/v1/cluster/state
