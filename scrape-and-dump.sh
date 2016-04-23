#!/bin/bash

parsecr -od output $1
aws s3 sync output s3://congressional-record/
