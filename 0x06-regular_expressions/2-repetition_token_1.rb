#!/usr/bin/env ruby
#This script runs regex to match the following
#htn
#hbtn
puts ARGV[0].scan(/hb?tn/).join
