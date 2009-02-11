# -*- ruby -*-

require 'rubygems'
require 'hoe'
require './lib/emailtosms.rb'

Hoe.new('emailtosms', EmailToSMS::VERSION) do |p|
  p.rubyforge_name = 'emailtosms' # if different than lowercase project name
  p.remote_rdoc_dir = ''
  p.developer('Abhi Yerra', 'abhi@traytwo.com')
end

task :gemspec do
  system 'rake debug_gem | grep -v "(in " > `basename \`pwd\``.gemspec'
end
# vim: syntax=Ruby
