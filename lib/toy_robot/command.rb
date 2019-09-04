module ToyRobot
  class Command
    def self.process(command)
      if match = /\APLACE (?<x>\d+),(?<y>\d+),(?<direction>\w+)\Z/.match(command)
      # [:place, $1.to_i, $2.to_i, $3]
      [:place, match[:x].to_i, match[:y].to_i, match[:direction]]
      else
        [:invalid, command]
      end
    end
  end
end