= emailtosms

* http://github.com/abhiyerra/emailtosms/

== DESCRIPTION:

Email to SMS is a library that makes it simple to send a text message
using the carrier's text to sms interface.

== FEATURES/PROBLEMS:

* Simple interface to send and sms
* TODO: Generic utility to send message
* TODO: receive messages
* TODO: add more carrier's and split between regions so as to make app development easier.

== SYNOPSIS:

An example to send to a single contact.

require 'net/smtp'
require 'emailtosms'

smtp = Net::SMTP.new('localhost')

emailtosms = EmailToSMS.new(smtp, 'username@yourdomain.com')
emailtosms.send_sms(:subject => "Subject", 
                    :message => "The message body.", 
                    :to => {:number => "1234561234", :carrier => "AT&T"})

Another example to send to multiple contacts

require 'net/smtp'
require 'emailtosms'

smtp = Net::SMTP.new('localhost')

emailtosms = EmailToSMS.new(smtp, 'username@yourdomain.com')
emailtosms.send_sms(:subject => "Subject", 
                    :message => "The message body.", 
                    :to => [{:number => "1234561234", :carrier => "AT&T"},
                            {:number => "1234561235", :carrier => "Verizon"}])

== REQUIREMENTS:

* Your curiosity.

== INSTALL:

$ sudo gem sources -a http://gems.github.com # (you only have to do this once)
$ sudo gem install abhiyerra-emailtosms

== LICENSE:

(The MIT License)

Copyright (c) 2009 Kesava Abhinav Yerra <abhi@traytwo.com>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
