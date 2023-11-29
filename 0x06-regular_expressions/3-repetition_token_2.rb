#!/usr/bin/env ruby
#This script runs regex to match the following
#hbtn
#hbttn
#hbtttn
#hbttttn
puts ARGV[0].scan(/hbt+n/).join
