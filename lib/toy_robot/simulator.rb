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
      return unless @table.valid_location?(*robot.next_move)

      robot.move
    end

    def turn_left
      robot.turn_left
    end

    def turn_right
      robot.turn_right
    end

    def report
      position = robot.report
      puts "Robot is currently at (#{position[:east]}, #{position[:north]})" \
           " and it's facing #{position[:direction]}"
    end
  end
end
