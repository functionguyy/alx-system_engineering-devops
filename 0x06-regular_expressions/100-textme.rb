#!/usr/bin/env ruby
#This script runs regex to match the following
#The regular expression must be exactly matching [SENDER] [RECEIVER] [FLAGS] in
#a TextMe log file
#sample text
#'Feb 1 11:00:00 ip-10-0-0-11 mdr: 2016-02-01 11:00:00 Receive SMS 
#[SMSC:SYBASE1] [SVC:] [ACT:] [BINF:] [FID:] [from:Google] [to:+16474951758] 
#[flags:-1:0:-1:0:-1] [msg:127:This planet has - or rather had - a problem, 
#which was this: most of the people on it were unhappy for pretty much of the 
#time.] [udh:0:]'
puts ARGV[0].scan(/\[(?:from:)([+A-Z0-9][a-z0-9]+)\]\s\[(?:to:)([+A-Z0-9][a-z0-9]+)\]\s\[(?:flags:)([^\]]+)\]/).join(',')
