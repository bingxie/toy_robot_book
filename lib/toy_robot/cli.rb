module ToyRobot
  class CLI
    attr_reader :simulator

    def load_commands(commands_file)
      File.readlines(commands_file).map do |command|
        ToyRobot::Command.process(command)
      end
    end

    def run(commands)
      commands.each do |command, *args|  # package
        simulator.send(command, *args) # unpackage
      end
    end
  end
end
