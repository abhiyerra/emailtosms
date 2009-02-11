# -*- ruby -*-

require 'rubygems'
require 'hoe'

lib_dir = File.expand_path(File.join(File.dirname(__FILE__), 'lib'))
$LOAD_PATH << lib_dir unless $LOAD_PATH.include?(lib_dir)
require 'emailtosms'


Hoe.new('emailtosms', EmailToSMS::VERSION) do |p|
  p.rubyforge_name = 'emailtosms' # if different than lowercase project name
  p.remote_rdoc_dir = ''
  p.developer('Abhi Yerra', 'abhi@traytwo.com')
end

task :gemspec do
  system 'rake debug_gem | grep -v "(in " > `basename \`pwd\``.gemspec'
end
# vim: syntax=Ruby
