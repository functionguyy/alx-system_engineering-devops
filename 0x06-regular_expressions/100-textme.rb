#!/usr/bin/env ruby
#This script runs regex to match the following
#The regular expression must be exactly matching a string with h ends with n
#and can have any single character in between
puts ARGV[0].scan(/\[(?:from:)([+A-Z0-9][a-z0-9]+)\]\s\[(?:to:)([+A-Z0-9][a-z0-9]+)\]\s\[(?:flags:)([^\]]+)\]/).join(',')
