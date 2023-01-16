#!/bin/bash

# Script find and type of files which are N days older

find {{DIR}} -type f -name {{FILEEXT}} -mtime +{{DAYSOLD}}

# to run this
# ansible-playbook ansible_4.yml -i localhost -u pvreddy -e "DIR=/apps/tomcat FILEEXT=* .log DAYSOLD=30"