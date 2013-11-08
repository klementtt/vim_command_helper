require 'rspec'
require '../src/command_parser'

describe 'command parser' do
	it 'should list all current commands' do
		commands = command.new("d", "delete")
		cp = command_parser.new(commands)
		command_parser.listAll.count.should == 1	
	end
end
