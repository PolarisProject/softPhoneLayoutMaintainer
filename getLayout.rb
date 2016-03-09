require 'json'
require 'forwardable'
require 'soapforce'
require 'yaml'

config = YAML.load($<.read)
client = Soapforce::Client.new(:host => config[:host])
client.authenticate(config)

puts JSON.pretty_generate(client.describe_softphone_layout.raw_hash)