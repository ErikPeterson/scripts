#!/bin/sh
ruby -e "require 'base64'; puts Base64.decode64('$1')"
