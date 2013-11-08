require 'command'

class CommandParser
    def initialize(commands)
        @commands = commands
    end

    def noOfCommands()
        @commands.count
    end

    def describe cmdString
        @mode = 'cmd'
        result = ''

        cmdString.chars.each do |cmdChar|
             result = getCommandDescription cmdChar
        end
        result
    end

    private
    def getCommandDescription cmdChar
       @commands.select do |cmd|
           cmd.command == cmdChar
       end.first.description
    end
end
