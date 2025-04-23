#!/bin/sh

if ["$DATABASE" = "postgres"]
    echo "Check if database is running

    while ! nc -z $SQL_HOST $SQL_PORT; do


