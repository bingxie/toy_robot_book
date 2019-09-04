module ToyRobot
  class Command
    def self.process(command)
      /\APLACE (?<x>\d+),(?<y>\d+),(?<direction>\w+)\Z/ =~ command
      # [:place, $1.to_i, $2.to_i, $3]
      [:place, x.to_i, y.to_i, direction]
    end
  end
end