#!/bin/bash
# This script will backup a Palo Alto Firewall config.xml to hostnameDATE.xml
# For automated backups this can be set as a cron job.
# Note you must create and save the Palo XML API Key first, protect this like a password: https//<firewall-ip>/api/?type=keygen&user=<username>&password=<password>

# Determine the date
date=$(date+"%m_%d_%Y")

# Backup and save output with the date
curl -kG "https://<firewall-ip>/api/?type=export&category=configuration&key<API-KEY-HERE>" > /path/to/pan-backup/firewall$date.xml
