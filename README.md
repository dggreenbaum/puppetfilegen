# puppetfilegen
A simple ruby script to generate a r10k puppet file based on a puppet environments currently installed modules.

## Why do I want this?
Are you trying to bring r10k into your codebase? Are you afraid that one day someone will update a forge module and break your things? This script generates a Puppetfile that fixes your modules' versions where they currently are. This way it is easy to adopt r10k while maintaining tight control over your module versions.

## How do I use this?
    wget https://raw.githubusercontent.com/dggreenbaum/puppetfilegen/master/puppetfilegen.rb
    chmod +x puppetfilegen.rb
    ./puppetfilegen.rb > ~/Puppetfile

## What if my modules are somewhere other than /etc/puppet?
You can tell the script where to look with the -p flag:

    ./puppetfilegen.rb -p /etc/puppet/environments/devel/ > ~/Puppetfile
    
## What do I need?

You will need the following gems:
* json
