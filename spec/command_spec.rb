require 'spec_helper'

RSpec.describe ToyRobot::Command do
  context 'PLACE' do
    it 'processes a PLACE command' do
      command, *args = described_class.process('PLACE 1,2,NORTH')
      expect(command).to eq(:place)
      expect(args).to eq [1, 2, 'NORTH']
    end
  end
end