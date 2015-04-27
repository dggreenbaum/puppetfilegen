#! /usr/bin/ruby

require 'rubygems' if RUBY_VERSION < '1.9.0'
require 'json'
require 'optparse'

puppet_env = "/etc/puppet"

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: puppetfilegen.rb [options]"

  opts.on('-p', '--puppethome  PATH', 'Puppet Home') { |v| puppet_env = v }

end.parse!

puts "forge 'forge.puppetlabs.com'"
Dir.glob("#{puppet_env}/modules/*/metadata.json") do |item|
  next if item == '.' or item == '..'
  # do work on real items
  data = JSON.parse(File.read(item))
  name =
  puts "mod '#{data['name'].gsub!('-', '/')}', '#{data['version']}'"
end
