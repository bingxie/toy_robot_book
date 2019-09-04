module ToyRobot
  class Simulator
    attr_reader :robot
    def initialize(table)
      @table = table
      @robot = nil
    end

    def place(x, y, direction)
      if @table.valid_location?(x, y)
        @robot = Robot.new(x, y, direction)
      end
    end
  end
end