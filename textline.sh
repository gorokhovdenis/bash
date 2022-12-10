#!/bin/bash
phpline="memcache wddx apcu mcrypt geoip"
for word in $phpline; do php -m | grep  $word; done