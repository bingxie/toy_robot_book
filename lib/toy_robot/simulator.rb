module ToyRobot
  class Simulator
    attr_reader :robot
    def initialize(table)
      @table = table
      @robot = nil
    end

    def place(x, y, direction)
      @robot = Robot.new(x, y, direction) if @table.valid_location?(x, y)
    end

    def move
      robot.move
    end

    def turn_left
      robot.turn_left
    end

    def turn_right
      robot.turn_right
    end

    def report
      robot.report
    end
  end
end
