#gem install money
#or download file from rubygems.org and then do ruby install command
#gem list - shows all gems
require 'money'
money = Money.new(1000, 'USD')
puts money.inspect
#gem help commands - lists gem commands
#gem uninstall <gem_name>
#gem environment
#gem content <gem_name> - every file of the gem