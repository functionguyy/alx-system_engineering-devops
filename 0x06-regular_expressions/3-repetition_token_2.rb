#!/usr/bin/env ruby
# find the regular expression that will match the below cases
# hbtn
# hbttn
# hbtttn
# hbttttn
puts ARGV[0].scan(/hb{1,4}tn/).join
