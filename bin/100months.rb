#!/usr/bin/env ruby

#Copyright (c) 2008 James Smith (http://www.floppy.org.uk)

#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#The above copyright notice and this permission notice shall be included in
#all copies or substantial portions of the Software.
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
#THE SOFTWARE.

require 'date'
require 'rubygems'
require 'twitter'

TWITTER_USERNAME = ''
TWITTER_PASSWORD = ''

START_DATE = Date.new(2008,8,1)
TODAY = Date.today

years_gone = TODAY.year - START_DATE.year
months_gone = TODAY.month - START_DATE.month + (years_gone * 12)
months_left = 100 - months_gone

# Post
twitter = Twitter::Base.new(TWITTER_USERNAME, TWITTER_PASSWORD)
if months_left > 0
  tweet = "We now have #{months_left} months to avoid dangerous climate change. Visit http://onehundredmonths.org to find out more."
else
  tweet = "We're out of time!"
end
twitter.post(tweet)

