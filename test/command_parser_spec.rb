require 'rspec'
$:.push '/Users/tomclement/vim_command_helper/src/'
require 'command_parser'
require 'command'

describe 'command parser' do
    
     COMMANDS = [Command.new("d", "enter delete mode"),Command.new("y", "yank"),]

	it 'should list the number of current commands' do
		cp = CommandParser.new(COMMANDS)
	    cp.noOfCommands.should == 2	
	end
    it 'should output a description of a parsed command line' do
		cp = CommandParser.new(COMMANDS)
        commandString = 'd'
        cp.describe(commandString).should == 'enter delete mode'
    end
end
